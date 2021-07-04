// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailModel _$PokemonDetailModelFromJson(Map<String, dynamic> json) {
  return PokemonDetailModel(
    baseExperince: json['base_experience'] as String?,
    height: (json['height'] as num?)?.toDouble(),
    weight: (json['weight'] as num?)?.toDouble(),
    name: json['name'] as String?,
    stats: (json['stats'] as List<dynamic>?)
        ?.map((e) => PokemonStatModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PokemonDetailModelToJson(PokemonDetailModel instance) =>
    <String, dynamic>{
      'base_experience': instance.baseExperince,
      'height': instance.height,
      'weight': instance.weight,
      'name': instance.name,
      'stats': instance.stats,
    };
