import 'package:dio/dio.dart';

class api_service {
  final baseUrl = "";
  final Dio dio;

  api_service(this.dio);
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get("$baseUrl$endPoints");
    return response.data;
  }
}
