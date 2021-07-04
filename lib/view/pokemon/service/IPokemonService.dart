import 'package:flutter_pokedex/core/base/model/IResponseModel.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_list_response_model.dart';

import '../../../core/init/network/ICoreDio.dart';

abstract class IPokemonService {
  ICoreDio? coreDio;

  Future<PokemonListResponseModel?> getPokemons(
      {Map<String, dynamic>? queryParameters});

  Future<PokemonListResponseModel?> getPokemonDetail(
      {Map<String, dynamic>? queryParameters});
}
