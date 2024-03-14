import 'package:flutter_application_7/controller/exceptions/exception.dart';

class ApiRequestFailedExeption extends BaseException {
  final int? statusCode;
  ApiRequestFailedExeption({this.statusCode})
      : super("Api request failed with statuscode $statusCode");
}
