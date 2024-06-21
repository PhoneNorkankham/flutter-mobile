import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateGroupUseCase extends InputUseCase<DataResult<Group>, GroupRequest> {
  final SupabaseRepository _supabaseRepository;

  CreateGroupUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Group>> run(GroupRequest input) async {
    // Create new group
    final resource = await _supabaseRepository.createGroup(input);
    final Group? group = resource.data;
    if (resource.isSuccess && group != null) {
      return Result.value(group);
    } else {
      return Result.error(resource.toPageError());
    }
  }
}
