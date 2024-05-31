import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class DeleteContactUseCase extends InputUseCase<VoidResult, String> {
  final SupabaseRepository _supabaseRepository;

  DeleteContactUseCase(this._supabaseRepository);

  @override
  Future<VoidResult> run(String input) {
    return _supabaseRepository.deleteContact(input).then((resource) async {
      if (resource.isSuccess) {
        await _supabaseRepository.deleteInteractionsOfContact(input);
        await _supabaseRepository.deleteContactInJoinedGroups(input);
        return Result.value(null);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
