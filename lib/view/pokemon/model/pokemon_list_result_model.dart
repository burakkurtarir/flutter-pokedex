import 'package:flutter_pokedex/core/base/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_list_result_model.g.dart';

@JsonSerializable()
class PokemonListResultModel extends BaseModel<PokemonListResultModel> {
  final String? name;
  final String? url;

  PokemonListResultModel({this.name, this.url});

  factory PokemonListResultModel.fromJson(Map<String, dynamic> json) {
    return _$PokemonListResultModelFromJson(json);
  }

  get index => null;

  @override
  PokemonListResultModel fromJson(Map<String, dynamic> json) {
    return _$PokemonListResultModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonListResultModelToJson(this);
  }
}
