import 'package:flutter_pokedex/core/base/viewmodel/base_view_model.dart';
import 'package:flutter_pokedex/view/pokemon/model/pokemon_list_response_model.dart';
import 'package:flutter_pokedex/view/pokemon/service/IPokemonService.dart';
import 'package:flutter_pokedex/view/pokemon/service/pokemon_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'pokemon_list_view_model.g.dart';

class PokemonListViewModel = _PokemonListViewModelBase
    with _$PokemonListViewModel;

abstract class _PokemonListViewModelBase with Store, BaseViewModel {
  IPokemonService? pokemonService;

  @override
  void init() {
    pokemonService = PokemonService(coreDio);

    getPokemons();
  }

  @override
  void setContext(BuildContext context) {
    this.context = context;
  }

  PokemonListResponseModel? pokemons;

  @observable
  bool isLoading = false;

  @action
  changeLoading() {
    isLoading = !isLoading;
  }

  // TODO: Hata yönetimi yap
  Future<void> getPokemons() async {
    changeLoading();
    final response = await pokemonService!.getPokemons();
    changeLoading();
    pokemons = response;
  }
}
