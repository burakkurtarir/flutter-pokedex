import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class PokemonStat {
  final String? name;

  PokemonStat({this.name});
}
