import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/interactor/search_images_bloc.dart';

class SearchImagesResults extends StatelessWidget {
  const SearchImagesResults({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchImagesBloc bloc = context.read();
    return BlocBuilder<SearchImagesBloc, SearchImagesState>(
      buildWhen: (previous, current) => previous.images != current.images,
      builder: (context, state) {
        List<BingSearchImageData> images = state.images;
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            double height = MediaQuery.of(context).size.height;
            double pixels = notification.metrics.pixels;
            double maxScrollExtent = notification.metrics.maxScrollExtent;
            if (pixels + height >= maxScrollExtent) {
              bloc.add(const SearchImagesEvent.onLoadMore());
            }
            return true;
          },
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            crossAxisCount: 4,
            children: images
                .map((image) => GestureDetector(
                      onTap: () => Get.back(result: image),
                      child: Container(
                        constraints: const BoxConstraints(
                          minHeight: 40,
                          minWidth: 40,
                        ),
                        color: Theme.of(context).dividerColor.withOpacity(0.1),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: image.thumbnailUrl,
                            placeholder: (_, url) => Icon(
                              Icons.image_outlined,
                              size: 36,
                              color: Theme.of(context).dividerColor,
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.image_outlined,
                              size: 36,
                              color: Theme.of(context).dividerColor,
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
