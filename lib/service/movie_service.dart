import 'package:movie_module/model/model.dart';
import 'package:shared_module/shared.dart';

abstract class MovieService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL']!,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      validateStatus: (_) => true,
      queryParameters: {
        'api_key': dotenv.env['API_KEY'],
      },
    ),
  );

  Future<MovieModel> fetchMovie() async {
    try {
      final response = await _dio.get(
        UrlList.discoverMovie,
      );

      if (response.statusCode == 200) {
        // var results = response.data['results'] as List<MovieModel>;
        // var data = results.map((json) => MovieModel.fromJson(json)).toList();
        // return data;
      }

      throw Exception('Error');
    } catch (e) {
      rethrow;
    }
  }
}
