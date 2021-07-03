import 'IBaseErrorModel.dart';

abstract class IResponseModel<T> {
  T? data;
  IBaseErrorModel? error;
}

class ResponseModel<T> extends IResponseModel<T> {
  @override
  final T? data;
  @override
  final IBaseErrorModel? error;

  ResponseModel({this.data, this.error});
}
