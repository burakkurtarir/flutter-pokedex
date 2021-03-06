// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonListViewModel on _PokemonListViewModelBase, Store {
  final _$pokemonListAtom = Atom(name: '_PokemonListViewModelBase.pokemonList');

  @override
  ObservableList<PokemonListResultModel> get pokemonList {
    _$pokemonListAtom.reportRead();
    return super.pokemonList;
  }

  @override
  set pokemonList(ObservableList<PokemonListResultModel> value) {
    _$pokemonListAtom.reportWrite(value, super.pokemonList, () {
      super.pokemonList = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_PokemonListViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_PokemonListViewModelBaseActionController =
      ActionController(name: '_PokemonListViewModelBase');

  @override
  dynamic changeLoading() {
    final _$actionInfo = _$_PokemonListViewModelBaseActionController
        .startAction(name: '_PokemonListViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_PokemonListViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemonList: ${pokemonList},
isLoading: ${isLoading}
    ''';
  }
}
