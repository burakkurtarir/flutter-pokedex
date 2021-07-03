import 'package:flutter_pokedex/core/base/model/base_model.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_list_result_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_list_response_model.g.dart';

@JsonSerializable()
class PokemonListResponseModel extends BaseModel<PokemonListResponseModel> {
  final int? count;
  final String? next;
  final String? previous;
  final List<PokemonListResultModel>? results;

  PokemonListResponseModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  PokemonListResponseModel fromJson(Map<String, dynamic> json) {
    return _$PokemonListResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonListResponseModelToJson(this);
  }
}
