import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/extensions/context_extension.dart';
import 'package:flutter_pokedex/view/pokemon/helper/pokemon_helper.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_list_result_model.dart';
import 'package:flutter_pokedex/view/pokemon/resource/pokemon_resource.dart';

final pokemonHelper = PokemonHelper();

class PokemonListCard extends StatelessWidget {
  final PokemonListResultModel pokemon;
  const PokemonListCard({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            child: Image.network(
              pokemonHelper.getPokemonImageUrl(pokemon.url),
              height: PokemonResource.instance.pokemonListImageHeight,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '#${pokemonHelper.getPokemonId(pokemon.url)}',
            style: context.textTheme.subtitle1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '${pokemon.name}',
            style: context.textTheme.headline6,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
