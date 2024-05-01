import 'package:keepup/src/core/managers/supabase_manager.dart';
import 'package:keepup/src/core/model/group.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/network_bound_resource.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/utils/app_shared.dart';

class SupabaseRepository {
  final AppShared _appShared;
  final SupabaseManager _supabaseManager;

  SupabaseRepository(
    this._appShared,
    this._supabaseManager,
  );

  Future<Resource<LoggedInData>> getLoggedInData() {
    return NetworkBoundResource<LoggedInData, LoggedInData>(
      createSerializedCall: () => _supabaseManager.getLoggedInData(),
      saveCallResult: (result) => _appShared.setLoggedInData(result),
      loadFromDb: () async => _appShared.loggedInData,
    ).getAsFuture();
  }

  Future<Resource<LoggedInData>> createGuests() {
    return NetworkBoundResource<LoggedInData, LoggedInData>(
      createSerializedCall: () => _supabaseManager.createGuests(),
      saveCallResult: (result) => _appShared.setLoggedInData(result),
      loadFromDb: () async => _appShared.loggedInData,
    ).getAsFuture();
  }

  Future<Resource<void>> joinGroup(GroupData group) {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.joinGroup(group),
    ).getAsFuture();
  }
}
