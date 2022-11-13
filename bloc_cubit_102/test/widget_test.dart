import 'package:bloc_cubit_102/unknown/service/unknown_service.dart';
import 'package:bloc_cubit_102/unknown/service/vexana_network_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late IUnKnownService unKnownService;

  setUp(() {
    unKnownService = UnKnownService(VexanaNetworkManagerUnKnown());
  });
  

  test("Todo List  Test Test", () async {
    final response = await unKnownService.fetchDataList();
    expect(response?.data, isNotNull);
  });
}
