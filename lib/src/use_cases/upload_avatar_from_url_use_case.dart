import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class UploadAvatarFromUrlUseCase extends InputUseCase<DataResult<String>, String> {
  final SupabaseRepository _supabaseRepository;

  UploadAvatarFromUrlUseCase(this._supabaseRepository);

  @override
  Future<DataResult<String>> run(String input) async {
    try {
      final response = await http.get(Uri.parse(input));
      if (response.statusCode == 200) {
        Uint8List fileBytes = response.bodyBytes;
        return _supabaseRepository.uploadAvatarFromBytes(fileBytes).then((resource) {
          final String? url = resource.data;
          if (resource.isSuccess && url != null) {
            return Result.value(url);
          } else {
            return Result.error(resource.toPageError());
          }
        });
      }
    } catch (_) {}
    return Result.error(PageError(NetworkError.other, LocaleKey.avatarUpdateFailed.tr));
  }
}
