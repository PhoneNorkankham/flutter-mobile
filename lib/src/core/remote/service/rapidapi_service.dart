import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'rapidapi_service.g.dart';

@RestApi()
abstract class RapidapiService {
  factory RapidapiService(Dio dio, {String baseUrl}) = _RapidapiService;

  @GET("/wspic/b64")
  Future<String> getPicBase64(@Query('phone') String phone);
}
