import 'package:keepup/src/core/network_bound_resource.dart';
import 'package:keepup/src/core/remote/service/rapidapi_service.dart';
import 'package:keepup/src/core/resource.dart';

class RapidapiRepository {
  final RapidapiService _rapidapiService;

  RapidapiRepository(this._rapidapiService);

  Future<Resource<String>> getPicBase64(String phone) {
    return NetworkBoundResource<String, String>(
      createSerializedCall: () => _rapidapiService.getPicBase64(phone),
    ).getAsFuture();
  }
}
