// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      posterPath: json['posterPath'] as String,
      originalLanguage: json['originalLanguage'] as String,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'posterPath': instance.posterPath,
      'originalLanguage': instance.originalLanguage,
    };

_$MovieResponseImpl _$$MovieResponseImplFromJson(Map<String, dynamic> json) =>
    _$MovieResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieResponseImplToJson(_$MovieResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
