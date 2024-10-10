import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/search_images/search_images_bottom_sheet.dart';
import 'package:keepup/src/utils/app_utils.dart';

enum EditPhotoType {
  camera,
  gallery,
  searchWeb;

  String get title {
    return switch (this) {
      EditPhotoType.camera => LocaleKey.takePhoto.tr,
      EditPhotoType.gallery => LocaleKey.choosePhoto.tr,
      EditPhotoType.searchWeb => LocaleKey.searchWeb.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      EditPhotoType.camera => Icons.photo_camera_outlined,
      EditPhotoType.gallery => Icons.photo_outlined,
      EditPhotoType.searchWeb => Icons.travel_explore_outlined,
    };
  }
}

class EditPhotoPopup extends StatelessWidget {
  static Future<dynamic> show({String imageUrl = '', String query = ''}) {
    return Get.bottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      EditPhotoPopup(imageUrl: imageUrl),
    ).then((value) {
      if (value is EditPhotoType) {
        switch (value) {
          case EditPhotoType.camera:
            return AppUtils.pickImage(ImageSource.camera);
          case EditPhotoType.gallery:
            return AppUtils.pickImage(ImageSource.gallery);
          case EditPhotoType.searchWeb:
            return SearchImagesBottomSheet.show(query: query);
        }
      }
    });
  }

  final String imageUrl;

  const EditPhotoPopup({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Theme.of(context).bottomSheetTheme.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              dense: true,
              leading: AppCircleAvatar(
                radius: 24,
                url: imageUrl,
                placeholder: const Icon(Icons.image, size: 24),
              ),
              trailing: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.close),
              ),
              title: Text(
                LocaleKey.editProfilePicture.tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: EditPhotoType.values.length,
                itemBuilder: (context, index) {
                  EditPhotoType type = EditPhotoType.values.elementAt(index);
                  return GestureDetector(
                    onTap: () => Get.back(result: type),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(child: Text(type.title)),
                          const SizedBox(width: 8),
                          Icon(type.icon),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  indent: 12,
                  height: 1,
                  thickness: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
