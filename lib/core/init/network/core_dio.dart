import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '../../base/model/IResponseModel.dart';
import '../../base/model/base_error_model.dart';
import '../../base/model/base_model.dart';
import '../../constants/enums/http_types.dart';
import '../../extensions/network_extension.dart';

import 'ICoreDio.dart';

part './network_core/core_operations.dart';

class CoreDio with DioMixin implements Dio, ICoreDio {
  CoreDio(options) {
    this.options = options;
    interceptors.add(InterceptorsWrapper());
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  @override
  Future<IResponseModel<R>> send<R, T extends BaseModel>(
    String path, {
    required HttpTypes type,
    required T parseModel,
    dynamic data,
  }) async {
    final response = await request(
      path,
      data: data,
      options: Options(method: type.rawValue),
    );
    switch (response.statusCode) {
      case HttpStatus.ok:
      case HttpStatus.accepted:
        final model = _responseParser<R, T>(parseModel, response.data);
        return ResponseModel<R>(data: model);
      default:
        return ResponseModel(error: BaseErrorModel(response.statusMessage!));
    }
  }
}
