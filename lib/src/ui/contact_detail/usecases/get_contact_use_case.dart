import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class GetContactUseCase extends InputUseCase<DataResult<Contact>, String> {
  final SupabaseRepository _supabaseRepository;

  GetContactUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Contact>> run(input) {
    return _supabaseRepository.getContact(input).then((resource) {
      final Contact? data = resource.data;
      if (resource.isSuccess && data != null) {
        return Result.value(data);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
