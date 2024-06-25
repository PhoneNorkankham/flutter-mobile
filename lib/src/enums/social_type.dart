import 'package:keepup/src/utils/app_assets.dart';

enum SocialType {
  facebook,
  linking,
  google;

  String get icon {
    return switch (this) {
      SocialType.facebook => AppAssets.ic_facebook_png,
      SocialType.linking => AppAssets.ic_linkin_png,
      SocialType.google => AppAssets.ic_google_png,
    };
  }
}
