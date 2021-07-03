import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pokedex/view/pokemon/resource/pokemon_resource.dart';

import '../../../../../core/base/view/base_view.dart';
import '../../../ui/pokemon_list_card.dart';
import '../viewmodel/pokemon_list_view_model.dart';

class PokemonListView extends StatelessWidget {
  const PokemonListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<PokemonListViewModel>(
      builder: (BuildContext context, viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Pokemon List'),
          ),
          body: Observer(
            builder: (_) {
              if (viewModel.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else {
                return buildList();
              }
            },
          ),
        );
      },
      onReady: (PokemonListViewModel? model) {
        model!.setContext(context);
        model.init();
      },
      viewModel: PokemonListViewModel(),
    );
  }

  GridView buildList() {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return PokemonListCard();
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: PokemonResource.instance.pokemonListmainAxisExtent,
      ),
    );
  }
}
