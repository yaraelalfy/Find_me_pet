import 'package:dio/dio.dart';
import 'models/dog_model.dart';

class DogApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://api.api-ninjas.com/v1/dogs';
  final String _apiKey = 'GEQYLR9mqOb0W/7WGyXktw==LiOgJbdMXvw4tIjA';

  Future<List<DogModel>> fetchDogs(String name) async {
    try {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {'name': name},
        options: Options(
          headers: {
            'X-Api-Key': _apiKey,
          },
        ),
      );
      List<dynamic> data = response.data;
      List<DogModel> dogList = data.map((dog) => DogModel.fromJson(dog)).toList();
      return dogList;
    } catch (e) {
      print('Error fetching dogs: $e');
      return [];
    }
  }
}
void main() async {
  final dogApiService = DogApiService();
  List<DogModel> dogs = await dogApiService.fetchDogs('dog');
  for (var dog in dogs) {
    print('Name: ${dog.name}');
  }
}

