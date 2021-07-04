import '../../base/model/IResponseModel.dart';
import '../../base/model/base_model.dart';
import '../../constants/enums/http_types.dart';

abstract class ICoreDio {
  Future<IResponseModel<R>> send<R, T extends BaseModel>(
    String path, {
    required HttpTypes type,
    required T parseModel,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}
