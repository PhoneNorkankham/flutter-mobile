import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/contact_phone.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class GetContactStateMapper implements BaseStateMapper<ContactDetailState, DataResult<Contact>> {
  @override
  ContactDetailState mapResultToState(ContactDetailState state, DataResult<Contact> result) {
    if (result.isError) {
      PageError pageError = result.asError!.error;
      return state.copyWith(
        isLoading: false,
        pageCommand: pageError.toPageCommand(),
      );
    } else {
      final Contact contact = result.valueOrCrash;
      ContactRequest request = ContactRequest.fromJson(contact.toJson());
      List<ContactPhone> phones = [];
      if (request.phones.isNotEmpty) {
        for (int i = 0; i < request.phones.length; i++) {
          phones.add(request.phones.elementAt(i).copyWith(key: state.lastKey + 1));
        }
      } else {
        phones.add(ContactPhone(key: state.lastKey, label: 'mobile', value: request.phoneNo));
      }
      request = request.copyWith(phones: phones);
      return state.copyWith(
        isLoading: false,
        request: request,
        selectedGroup: state.groups.where((element) => element.id == request.groupId).firstOrNull,
        contactId: contact.id,
        contactType: ContactType.contactDetail,
        lastKey: phones.lastOrNull?.key ?? state.lastKey,
      );
    }
  }
}
