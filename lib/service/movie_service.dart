import 'package:movie_module/model/model.dart';
import 'package:shared_module/shared.dart';

abstract class MovieService {
  late final Dio dio;

  Future<MovieModel> fetchMovie() async {
    final url = dotenv.env['BASE_URL'];
    final apiKey = dotenv.env['API_KEY'];
    const endpoint = UrlList.discoverMovie;

    try {
      final response = await dio.get(
        '$url$endpoint',
        queryParameters: {'api_key': apiKey},
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
