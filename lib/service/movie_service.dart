import 'package:movie_module/model/model_path.dart';
import 'package:shared_module/shared.dart';

class MovieService {
  final Dio _dio = Dio();

  Future<MovieResponse> fetchMovie() async {
    final response = await _dio.get(
      'https://api.themoviedb.org/3/discover/movie',
      queryParameters: {'api_key': 'c9bf7512a3ce71e9db46a77ddf167982'},
    );

    debugPrint('${response.data}');

    return MovieResponse.fromJson(response.data);
  }
}
