import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateAnonymousAccountUseCase extends NoInputUseCase<VoidResult> {
  final SupabaseRepository _supabaseRepository;

  CreateAnonymousAccountUseCase(this._supabaseRepository);

  @override
  Future<VoidResult> run() {
    return _supabaseRepository.createGuests().then((value) {
      if (value.isSuccess) {
        return VoidResult.value(null);
      } else {
        return VoidResult.error(value.toPageError());
      }
    });
  }
}
