import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required String id,
    required String title,
    required String posterPath,
    required String originalLanguage,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);
}
