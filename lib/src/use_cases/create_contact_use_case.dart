import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateContactUseCase extends InputUseCase<DataResult<Contact>, ContactRequest> {
  final SupabaseRepository _supabaseRepository;

  CreateContactUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Contact>> run(ContactRequest input) {
    return _supabaseRepository.insertContact(input).then((resource) {
      final Contact? data = resource.data;
      if (resource.isSuccess && data != null) {
        return Result.value(data);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
