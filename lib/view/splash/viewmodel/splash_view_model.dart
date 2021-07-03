import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/base/viewmodel/base_view_model.dart';
import 'package:flutter_pokedex/core/constants/navigation/navigation_constants.dart';
import 'package:mobx/mobx.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @override
  void init() {
    Future.delayed(Duration(seconds: 1))
        .then((value) => navigateToPokemonList());
  }

  @override
  void setContext(BuildContext context) {
    this.context = context;
  }

  void navigateToPokemonList() {
    navigation.pushNamedAndClear(NavigationConstants.POKEMON_LIST_VIEW);
  }
}
