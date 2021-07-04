import 'package:flutter_pokedex/core/base/model/base_model.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_stat_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_detail_model.g.dart';

@JsonSerializable()
class PokemonDetailModel extends BaseModel<PokemonDetailModel> {
  @JsonKey(name: 'base_experience')
  final String? baseExperince;
  final double? height;
  final double? weight;
  final String? name;
  final List<PokemonStatModel>? stats;

  PokemonDetailModel({
    this.baseExperince,
    this.height,
    this.weight,
    this.name,
    this.stats,
  });

  @override
  PokemonDetailModel fromJson(Map<String, dynamic> json) {
    return _$PokemonDetailModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonDetailModelToJson(this);
  }
}
