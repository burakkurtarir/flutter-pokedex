import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/extensions/context_extension.dart';
import 'package:flutter_pokedex/view/pokemon/resource/pokemon_resource.dart';

class PokemonListCard extends StatelessWidget {
  const PokemonListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            child: Image.network(
              'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png',
              height: PokemonResource.instance.pokemonListImageHeight,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '#001',
            style: context.textTheme.subtitle1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Bulbasaur',
            style: context.textTheme.headline6,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
