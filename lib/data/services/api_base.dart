/*
* Основной адрес нового API: https://evpanet.com/api/apk/
*/

import 'package:dio/dio.dart';

const String _baseURL = 'https://evpanet.com/api/apk';

/// TODO Сделать получение токена. Он необходим для криптования/раскриптования guid
///
const Map _authToken = {'token': 'asdfasfd'};

class APIBase {
  final Dio _dio;

  APIBase(this._dio) {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: _baseURL,
        headers: _authToken,
      ),
    );
  }

  //APIService._(this._dio);
}
