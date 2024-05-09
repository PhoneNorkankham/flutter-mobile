import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateGroupUseCase extends InputUseCase<DataResult<Group>, GroupRequest> {
  final SupabaseRepository _supabaseRepository;

  CreateGroupUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Group>> run(GroupRequest input) {
    return _supabaseRepository.insertGroup(input).then((resource) {
      final Group? data = resource.data;
      if (resource.isSuccess && data != null) {
        return Result.value(data);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
