import 'package:movie_module/model/model_path.dart';
import 'package:shared_module/shared.dart';

class MovieService {
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

  Future<MovieResponse> fetchMovie() async {
    try {
      final response = await _dio.get(
        UrlList.discoverMovie,
      );

      if (response.statusCode == 200) {
        return MovieResponse.fromJson(response.data);
      }

      throw Exception('Error');
    } catch (e) {
      rethrow;
    }
  }
}
