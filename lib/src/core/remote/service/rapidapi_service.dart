import 'package:dio/dio.dart' hide Headers;
import 'package:keepup/src/core/remote/dio_http_client.dart';
import 'package:retrofit/retrofit.dart';

part 'rapidapi_service.g.dart';

@RestApi()
abstract class RapidapiService {
  factory RapidapiService(RapIdApiClient dio, {String baseUrl}) = _RapidapiService;

  @GET("/wspic/b64")
  Future<String> getPicBase64(@Query('phone') String phone);
}
