// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListResponseModel _$PokemonListResponseModelFromJson(
    Map<String, dynamic> json) {
  return PokemonListResponseModel(
    count: json['count'] as int?,
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => PokemonListResultModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PokemonListResponseModelToJson(
        PokemonListResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
