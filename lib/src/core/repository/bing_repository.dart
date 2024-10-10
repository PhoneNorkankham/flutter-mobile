import 'package:keepup/src/core/network_bound_resource.dart';
import 'package:keepup/src/core/remote/service/bing_service.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/core/response/bing_search_images_response.dart';

class BingRepository {
  final BingService _bingService;

  BingRepository(this._bingService);

  Future<Resource<BingSearchImagesResponse>> searchImages({
    required String query,
    required int offset,
  }) {
    return NetworkBoundResource<BingSearchImagesResponse, BingSearchImagesResponse>(
      createSerializedCall: () => _bingService.searchImages(query, offset),
    ).getAsFuture();
  }
}
