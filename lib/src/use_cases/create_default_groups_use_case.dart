import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateDefaultGroupsUseCase extends NoInputUseCase<ListResult<Group>> {
  final SupabaseRepository _supabaseRepository;

  CreateDefaultGroupsUseCase(this._supabaseRepository);

  @override
  Future<ListResult<Group>> run() {
    return _supabaseRepository.createDefaultGroups().then((value) {
      if (value.isSuccess) {
        return ListResult<Group>.value(value.data ?? []);
      } else {
        return ListResult<Group>.error(value.toPageError());
      }
    });
  }
}
