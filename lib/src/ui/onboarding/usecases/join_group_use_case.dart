import 'package:keepup/src/core/model/group.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class JoinGroupUseCase extends InputUseCase<VoidResult, GroupData> {
  final SupabaseRepository _supabaseRepository;

  JoinGroupUseCase(this._supabaseRepository);

  @override
  Future<VoidResult> run(GroupData input) {
    return _supabaseRepository.joinGroup(input).then((value) {
      if (value.isSuccess) {
        return VoidResult.value(null);
      } else {
        return VoidResult.error(value.toPageError());
      }
    });
  }
}
