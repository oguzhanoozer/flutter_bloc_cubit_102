import 'package:vexana/vexana.dart';

import '../model/resource_model.dart';


abstract class IUnKnownService {
  final INetworkManager networkManager;

  IUnKnownService(this.networkManager);

  Future<IResponseModel<UnkownModel?>?> fetchDataList();

  final _unKnownPath = 'api/unknown';
}

class UnKnownService extends IUnKnownService {
  UnKnownService(INetworkManager networkManager) : super(networkManager);

  Future<IResponseModel<UnkownModel?>?> fetchDataList() async {
    return await networkManager.send<UnkownModel, UnkownModel>(_unKnownPath, parseModel: UnkownModel(), method: RequestType.GET);
  }
}
