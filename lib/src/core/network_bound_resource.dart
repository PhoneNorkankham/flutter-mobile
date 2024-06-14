import 'dart:async';
import 'dart:io';

import 'package:keepup/src/core/resource.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NetworkBoundResource<RequestType, ResultType> {
  final Completer<Resource<ResultType>> _result = Completer<Resource<ResultType>>();

  Future<Resource<ResultType>> getAsFuture() => _result.future;

  Stream<Resource<ResultType>> getAsStream() => Stream.fromFuture(_result.future);

  final Future<RequestType> Function()? createSerializedCall;

  final bool shouldFetch;

  final Future<ResultType> Function()? loadFromDb;

  final Future<void> Function(ResultType result)? saveCallResult;

  final ResultType Function(RequestType json)? parsedData;

  NetworkBoundResource({
    this.createSerializedCall,
    this.parsedData,
    this.saveCallResult,
    this.loadFromDb,
    this.shouldFetch = true,
  }) {
    shouldFetch ? (_fetchFromServerWithSerialization()) : _fetchFromDB();
  }

  bool _areTypesSame<S, T>() => S == T;

  FutureOr<void> _fetchFromServerWithSerialization() {
    return createSerializedCall?.call().then((response) async {
      ResultType? result;

      if (parsedData != null) {
        result = parsedData!.call(response);
      } else if (response is ResultType) {
        result = response;
      }

      if (result != null || _areTypesSame<ResultType, void>()) {
        await saveCallResult?.call(result as ResultType); // cache database
      }

      if (loadFromDb != null) {
        result = await loadFromDb?.call(); // call request from database
      }

      if (_areTypesSame<ResultType, void>()) {
        _result.complete(Resource.fromData(null));
      } else if (result != null) {
        _result.complete(Resource.fromData(result));
      } else {
        _result.complete(Resource.withNoData());
      }
    }).catchError((e) async {
      ResultType? data = await loadFromDb?.call(); // call request from database
      if (e is PostgrestException) {
        _result.complete(Resource(
          data: data,
          message: e.message,
          type: ResourceType.REQUEST_ERROR,
        ));
      } else if (e is SocketException) {
        _result.complete(Resource(
          data: data,
          message: e.message,
          type: ResourceType.REQUEST_ERROR,
        ));
      } else {
        _result.complete(Resource(
          data: data,
          message: e.toString(),
          type: ResourceType.REQUEST_ERROR,
        ));
      }
    });
  }

  FutureOr<void> _fetchFromDB() async {
    Resource<ResultType> resource;
    if (loadFromDb == null) {
      resource = Resource.withNoData();
    } else {
      // call request from database
      ResultType? result = await loadFromDb?.call();
      if (result == null) {
        resource = Resource.withNoData();
      } else {
        resource = Resource.withHasData(result);
      }
    }
    _result.complete(resource);
  }
}
