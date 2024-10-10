import 'package:flutter/material.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/components/search_images_header.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/components/search_images_results.dart';

class SearchImagesView extends StatelessWidget {
  const SearchImagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        decoration: ShapeDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
        ),
        margin: const EdgeInsets.only(top: 24),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 12),
            SearchImagesHeader(),
            Expanded(child: SearchImagesResults()),
          ],
        ),
      ),
    );
  }
}
