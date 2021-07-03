import 'IBaseErrorModel.dart';

class BaseErrorModel extends IBaseErrorModel {
  @override
  final String message;

  BaseErrorModel(this.message);
}
