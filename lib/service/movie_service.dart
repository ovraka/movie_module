import 'package:movie_module/model/model_path.dart';
import 'package:shared_module/shared.dart';

class MovieService {
  late final Dio _dio;

  Future<MovieResponse> fetchMovie() async {
    final response = await _dio.get(
      '${dotenv.env['BASE_URL']}${UrlList.discoverMovie}',
      queryParameters: {
        'api_key': dotenv.env['API_KEY'],
      },
    );

    debugPrint('${response.data}');

    return MovieResponse.fromJson(response.data);
  }
}
