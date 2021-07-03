import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/base/view/base_view.dart';
import 'package:flutter_pokedex/view/splash/viewmodel/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      builder: (BuildContext context, viewModel) {
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
      onReady: (SplashViewModel? model) {
        model!.setContext(context);
        model.init();
      },
      viewModel: SplashViewModel(),
    );
  }
}
