import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class UpdateContactUseCase extends InputUseCase<DataResult<Contact>, ContactRequest> {
  final SupabaseRepository _supabaseRepository;

  UpdateContactUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Contact>> run(ContactRequest input) {
    return _supabaseRepository.updateContact(input).then((resource) {
      final Contact? data = resource.data;
      if (resource.isSuccess && data != null) {
        return Result.value(data);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
