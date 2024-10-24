class AppConstants {
  // Base name
  static const String appName = "Keepup";
  static const String appDatabaseName = "KeepupDB_202311241718"; //no Space
  static const String supabaseUrl = 'https://abtxbiiaitrtayvmltko.supabase.co';
  static const String supabaseKey = String.fromEnvironment('SUPABASE_KEY');

  // Base url
  static const bool enabledWhatsappProfilePicApi = true;
  static const String rapidapiDomain = "https://whatsapp-profile-pic.p.rapidapi.com";
  static const String rapidapiUA = 'RapidAPI-Playground';
  static const String rapidapiKey = '0b9eaffcc1mshdef82ef0d24b1a3p19c943jsn4872fcc0927c';
  static const String rapidapiHost = 'whatsapp-profile-pic.p.rapidapi.com';

  static const String bingDomain = "https://api.bing.microsoft.com";
  static const String bingKey = '379b05dc698e480ca436d5e39f10fe53';

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

  static final List<String> onBoardingGroups = [
    'Family',
    'Friends',
    'Business Associates',
  ];

  static const String allCategories = 'All Categories';

  static final List<String> phoneLabels = [
    'mobile',
    'home',
    'work',
    'school',
    'other',
  ];

  // Google Auth
  static String webClientId =
      '44968695723-jie4qke0neb2c4ogbjts7brv8egsepaf.apps.googleusercontent.com';
  static String iOSClientIdDev =
      '44968695723-isgshv2fmp13k214883cmmupsvokb514.apps.googleusercontent.com';
  static String iOSClientId =
      '44968695723-og08c0d5aqj5pe720l49ov4eflbih2ko.apps.googleusercontent.com';
}
