import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class ConfirmLinkedIdentityUseCase extends InputUseCase<DataResult<LoggedInData>, String> {
  final SupabaseRepository _supabaseRepository;

  ConfirmLinkedIdentityUseCase(this._supabaseRepository);

  @override
  Future<DataResult<LoggedInData>> run(String input) {
    return _supabaseRepository.confirmLinkedIdentity(input).then((resource) {
      final data = resource.data;
      if (data != null) {
        return Result.value(data);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
