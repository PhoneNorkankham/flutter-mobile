import 'package:keepup/src/core/managers/supabase_manager.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CheckLoggedInUseCase extends NoInputUseCase<BoolResult> {
  final SupabaseManager _supabaseManager;

  CheckLoggedInUseCase(this._supabaseManager);

  @override
  Future<BoolResult> run() async {
    final bool isLoggedIn = await _supabaseManager.isLoggedIn();
    if (isLoggedIn) {
      return Result.value(true);
    } else {
      return Result.error(PageError(NetworkError.token, ''));
    }
  }
}
