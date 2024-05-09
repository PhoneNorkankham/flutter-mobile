import 'dart:io';

import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class UploadAvatarUseCase extends InputUseCase<DataResult<String>, File> {
  final SupabaseRepository _supabaseRepository;

  UploadAvatarUseCase(this._supabaseRepository);

  @override
  Future<DataResult<String>> run(File input) {
    return _supabaseRepository.uploadAvatar(input).then((resource) {
      final String? url = resource.data;
      if (resource.isSuccess && url != null) {
        return Result.value(url);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
