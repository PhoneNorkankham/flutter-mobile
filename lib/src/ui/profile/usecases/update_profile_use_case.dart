import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/user_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class UpdateProfileUseCase extends InputUseCase<VoidResult, UserRequest> {
  final SupabaseRepository _supabaseRepository;

  UpdateProfileUseCase(this._supabaseRepository);

  @override
  Future<VoidResult> run(UserRequest input) {
    return _supabaseRepository.updateUser(input).then((resource) async {
      if (resource.isSuccess) {
        return Result.value(null);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
