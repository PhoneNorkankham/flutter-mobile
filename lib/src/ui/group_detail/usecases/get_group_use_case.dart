import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class GetGroupUseCase extends InputUseCase<DataResult<Group>, String> {
  final SupabaseRepository _supabaseRepository;

  GetGroupUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Group>> run(input) {
    return _supabaseRepository.getGroup(input).then((resource) {
      final Group? data = resource.data;
      if (resource.isSuccess && data != null) {
        return Result.value(data);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
