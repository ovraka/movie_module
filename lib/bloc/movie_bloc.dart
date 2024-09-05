import 'package:bloc/bloc.dart';
import 'package:movie_module/bloc/movie_event.dart';
import 'package:movie_module/bloc/movie_state.dart';
import 'package:movie_module/service/movie_service.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieService _movieService;

  MovieBloc(this._movieService) : super(const MovieState.initial()) {
    on<MovieEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const MovieState.loading());
          try {
            final response = await _movieService.fetchMovie();
            emit(MovieState.loaded(response));
          } catch (e) {
            emit(MovieState.error(e.toString()));
          }
        },
      );
    });
  }
}
