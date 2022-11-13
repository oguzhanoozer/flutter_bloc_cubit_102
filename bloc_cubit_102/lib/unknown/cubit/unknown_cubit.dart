import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/unknown_service.dart';
import 'unknown_state.dart';

class UnKnownCubit extends Cubit<UnKnownState> {
  UnKnownCubit(UnKnownService unKnownService, BuildContext context)
      : _unKnownService = unKnownService,
        _context = context,
        super(UnKnownState());

  final UnKnownService _unKnownService;
  final BuildContext _context;

  Future<void> fetchDataList() async {
    emit(state.copyWith(isLoading: true, isCompeleted: false));
    final _response = await _unKnownService.fetchDataList();
    if (_response?.error != null) {
      final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
      ScaffoldMessenger.of(_context).showSnackBar(snackBar);
    }
    emit(state.copyWith(isLoading: false, isCompeleted: _response?.data != null, dataList: _response?.data?.data));
  }
}
