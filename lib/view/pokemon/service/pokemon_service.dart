import 'package:flutter_pokedex/core/constants/enums/http_types.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_list_response_model.dart';

import '../../../core/init/network/ICoreDio.dart';
import 'IPokemonService.dart';

class PokemonService implements IPokemonService {
  @override
  ICoreDio? coreDio;

  PokemonService(this.coreDio);

  @override
  Future<PokemonListResponseModel?> getPokemons(
      {Map<String, dynamic>? queryParameters}) async {
    final response =
        await coreDio!.send<PokemonListResponseModel, PokemonListResponseModel>(
      'pokemon/',
      type: HttpTypes.GET,
      parseModel: PokemonListResponseModel(),
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
