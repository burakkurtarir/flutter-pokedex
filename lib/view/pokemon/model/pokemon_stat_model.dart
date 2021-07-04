import 'package:flutter_pokedex/core/base/model/base_model.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_stat.dart';
import 'package:json_annotation/json_annotation.dart';

part '';

@JsonSerializable()
class PokemonStatModel extends BaseModel<PokemonStatModel> {
  @JsonKey(name: 'base_stat')
  final double? baseStat;
  final PokemonStat? stat;

  PokemonStatModel({
    this.baseStat,
    this.stat,
  });
}
