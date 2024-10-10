import 'package:dio/dio.dart' hide Headers;
import 'package:keepup/src/core/remote/dio_http_client.dart';
import 'package:keepup/src/core/response/bing_search_images_response.dart';
import 'package:retrofit/retrofit.dart';

part 'bing_service.g.dart';

@RestApi()
abstract class BingService {
  factory BingService(BingClient dio, {String baseUrl}) = _BingService;

  @GET("/v7.0/images/search?q={query}&offset={offset}")
  Future<BingSearchImagesResponse> searchImages(
    @Path() String query,
    @Path() int offset,
  );
}
