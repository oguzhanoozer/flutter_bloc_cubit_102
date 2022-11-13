import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/unknown_cubit.dart';
import '../cubit/unknown_state.dart';
import '../service/unknown_service.dart';
import '../service/vexana_network_manager.dart';

class UnKnownView extends StatelessWidget {
  const UnKnownView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UnKnownCubit>(
      create: (context) => UnKnownCubit(UnKnownService(VexanaNetworkManagerUnKnown()),context)..fetchDataList(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: BlocSelector<UnKnownCubit, UnKnownState, bool>(
            selector: (state) {
              return state.isLoading;
            },
            builder: (context, state) {
              return state
                  ? CircularProgressIndicator(
                      color: context.colorScheme.onSecondary,
                    )
                  : const SizedBox();
            },
          ),
        ),
        body: BlocConsumer<UnKnownCubit, UnKnownState>(
          listener: (context, state) {
            if (state.isCompeleted) {
              print("Data Loaded"); //context.navigateToPage(LoginView())
            }
          },
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.dataList?.length,
              itemBuilder: (context, index) => Card(
                child: Center(child: Text(state.dataList?[index].name ?? "")),
              ),
            );
          },
        ),
      ),
    );
  }
}
