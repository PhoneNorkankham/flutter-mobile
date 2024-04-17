import 'dart:async';

import 'package:dio/dio.dart';
import 'package:keepup/src/core/resource.dart';

class NetworkBoundResource<RequestType, ResultType> {
  final Completer<Resource<ResultType>> _result = Completer<Resource<ResultType>>();

  Future<Resource<ResultType>> getAsFuture() => _result.future;

  Stream<Resource<ResultType>> getAsStream() => Stream.fromFuture(_result.future);

  final Future<RequestType> Function()? createSerializedCall;

  final bool shouldFetch;

  final Future<ResultType> Function()? loadFromDb;

  final Future<void> Function(ResultType result)? saveCallResult;

  final ResultType Function(RequestType json)? parsedData;

  NetworkBoundResource(
      {this.createSerializedCall,
      this.parsedData,
      this.saveCallResult,
      this.loadFromDb,
      this.shouldFetch = true}) {
    shouldFetch ? (_fetchFromServerWithSerialization()) : _fetchFromDB();
  }

  bool _areTypesSame<S, T>() => S == T;

  FutureOr<void> _fetchFromServerWithSerialization() async {
    try {
      // call request from network
      RequestType response = await createSerializedCall!();

      ResultType? result;

      if (response is ResultType) {
        result = response;
      } else {
        result = parsedData?.call(response);
      }

      if (result != null || _areTypesSame<ResultType, void>()) {
        await saveCallResult?.call(result as ResultType); // cache database
      }

      if (loadFromDb != null) {
        result = await loadFromDb!(); // call request from database
      }

      if (_areTypesSame<ResultType, void>()) {
        _result.complete(Resource.fromData(null));
      } else if (result != null) {
        _result.complete(Resource.fromData(result));
      } else {
        _result.complete(Resource.withNoData());
      }
    } on DioException catch (e) {
      ResultType? data = await loadFromDb?.call(); // call request from database
      _result.complete(Resource.withError(e, data: data));
    }
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
