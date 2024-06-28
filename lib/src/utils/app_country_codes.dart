import 'package:keepup/src/core/remote/dio_http_client.dart';
import 'package:phonecodes/phonecodes.dart';

class AppCountryCodes {
  static Country? _country;

  static Country? get country => _country;

  static Future<void> initialize() async {
    final result = await DioHttpClient('http://ip-api.com/json').get('/');
    final data = result.data;
    if (data is Map<String, dynamic>) {
      if (data.containsKey('countryCode')) {
        final String countryCode = data['countryCode'];
        if (countryCode.isNotEmpty) {
          try {
            _country = Countries.findByCode(countryCode);
          } catch (_) {}
        }
      }
    }
  }
}
