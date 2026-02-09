import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String baseUrl = 'https://overpass-api.de/api/';
  ApiService({required this.dio});
  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? data,
  }) async {
    final response = await dio.post(
      '$baseUrl$endPoint',
      data: data,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
      ),
    );
    return response.data;
  }
}
