class AppConstants {
  // Base name
  static const String appName = "Keepup";
  static const String appDatabaseName = "KeepupDB_202311241718"; //no Space

  // Base url
  static const String API_PROD_URL = "http://keepup.com";
  static const String API_DEV_URL = "http://dev.keepup.comr";

  // Link demo image when make UI
  // 150x150: width x height => we can change it.
  static const String demoImageUrl = "http://via.placeholder.com/150x150";

  static const String patternEmail =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  // SlackHandle Catcher
  static const String slackWebHookUrl = "";
  static const String slackChannel = "#catcher";
  static const String slackUserName = "CatcherTest";
  static const String slackIconEmoji = ":thinking_face:";
  static const String slackLoggerWebHookUrl = "";

  //Deeplink
  static const IOS_STORE_ID = '0000000';

  // Platform
  static String android = 'android';
  static String ios = 'ios';

  // Paging
  static const int firstPage = 1;
  static const int limitPerPage = 10;
}
