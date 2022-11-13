// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../model/resource_model.dart';


class UnKnownState extends Equatable {
  final bool isLoading;
  final List<Data>? dataList;
  final bool isCompeleted;

  UnKnownState({this.isLoading = false, this.dataList, this.isCompeleted = false});

  @override
  List<Object?> get props => [isLoading, dataList];

  UnKnownState copyWith({
    bool? isLoading,
    List<Data>? dataList,
    bool? isCompeleted,
  }) {
    return UnKnownState(
      isLoading: isLoading ?? false,
      dataList: dataList ?? this.dataList,
      isCompeleted: isCompeleted ?? false,
    );
  }
}
