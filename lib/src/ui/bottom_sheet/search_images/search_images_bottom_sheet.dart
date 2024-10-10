import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/components/search_images_view.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/interactor/search_images_bloc.dart';

class SearchImagesBottomSheet extends StatelessWidget {
  static Future<dynamic> show({required String query}) {
    return Get.bottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      ignoreSafeArea: false,
      SearchImagesBottomSheet(query: query),
    );
  }

  final String query;

  const SearchImagesBottomSheet({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchImagesBloc(Get.find())..add(SearchImagesEvent.initial(query)),
      child: const SearchImagesView(),
    );
  }
}
