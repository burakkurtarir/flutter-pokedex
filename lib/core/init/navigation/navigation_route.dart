import 'package:flutter/material.dart';

import '../../../view/pokemon/view/pokemon_list/view/pokemon_list_view.dart';
import '../../components/card/navigation_not_found_widget.dart';
import '../../constants/navigation/navigation_constants.dart';
import 'route_animations/slide_up_route.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.POKEMON_LIST_VIEW:
        return normalNavigate(PokemonListView());
      default:
        return normalNavigate(NavigationNotFoundWidget());
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }

  SlideUpRoute slideUpNavigate(Widget widget) {
    return SlideUpRoute(view: widget);
  }
}
