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
                    // final movie = movieResponse.results[index];
                    return
                        // Column(
                        // children: [
                        Image.asset(
                      'assets/icons/done.png',
                      scale: 50,
                    );
                    // MovieItem(
                    //   imagePath:
                    //       'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                    //   title: movie.title,
                    //   subtitle: movie.overview,
                    // ),
                    //   ],
                    // );
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
