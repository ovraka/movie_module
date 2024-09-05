import 'package:movie_module/bloc/movie_bloc.dart';
import 'package:movie_module/bloc/movie_state.dart';
import 'package:movie_module/model/movie_model.dart';
import 'package:shared_module/shared.dart';

class DiscoverMovieScreen extends StatelessWidget {
  const DiscoverMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB Discover Movies'),
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          return state.when(
              initial: () {
                return const Text('data');
              },
              loading: () => const CustomLoading(),
              loaded: (MovieResponse movieResponse) {
                return ListView.builder(
                  itemCount: movieResponse.results.length,
                  itemBuilder: (context, index) {
                    final movie = movieResponse.results[index];
                    return MovieItem(
                      imagePath: movie.posterPath != null
                          ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}'
                          : "",
                      title: movie.title,
                      subtitle: movie.id.toString(),
                    );
                  },
                );
              },
              error: (message) {
                return Center(child: Text(message));
              });
        },
      ),
    );
  }
}
