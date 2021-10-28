import 'package:dio/dio.dart';
import 'package:holy_bible/core/utils/custom_exception.dart';

class BooksRemoteDatasource {
  final Dio dio;

  BooksRemoteDatasource({required this.dio});

  Future<Map<String, dynamic>> getBooks() async {
    try {
      final response = await dio.get("/bible");

      return Map<String, dynamic>.from(response.data);
    } catch (error) {
      throw CustomException(error);
    }
  }
}
