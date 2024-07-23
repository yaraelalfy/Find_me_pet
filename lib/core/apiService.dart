import 'package:dio/dio.dart';

class api_service {
  final baseUrl = "https://api.api-ninjas.com/v1/dogs?name=dog&X-Api-Key=GEQYLR9mqOb0W/7WGyXktw==LiOgJbdMXvw4tIjA";
  final Dio dio;

  api_service(this.dio);
  Future<Map<String, dynamic>> get() async {
    var response = await dio.get("$baseUrl");
    return response.data;
  }
}
