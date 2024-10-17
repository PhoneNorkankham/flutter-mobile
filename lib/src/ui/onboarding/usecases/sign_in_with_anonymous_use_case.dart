import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class SignInWithAnonymousUseCase extends NoInputUseCase<DataResult<LoggedInData>> {
  final SupabaseRepository _supabaseRepository;

  SignInWithAnonymousUseCase(this._supabaseRepository);

  @override
  Future<DataResult<LoggedInData>> run() {
    return _supabaseRepository.signInWithAnonymous().then((value) {
      if (value.isSuccess) {
        return DataResult<LoggedInData>.value(value.data!);
      } else {
        return DataResult<LoggedInData>.error(value.toPageError());
      }
    });
  }
}
