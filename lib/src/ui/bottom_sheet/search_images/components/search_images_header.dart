import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/interactor/search_images_bloc.dart';

class SearchImagesHeader extends StatelessWidget {
  const SearchImagesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchImagesBloc bloc = context.read();
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 20, right: 12),
      visualDensity: VisualDensity.compact,
      dense: true,
      trailing: TextButton(
        onPressed: () => Get.back(),
        child: Text(
          LocaleKey.cancel.tr,
          style: const TextStyle(color: Colors.green),
        ),
      ),
      title: AppSearchInput(
        margin: EdgeInsets.zero,
        controller: bloc.queryController,
        onSubmitted: (value) => bloc.add(SearchImagesEvent.onChangedQuery(value)),
      ),
    );
  }
}
