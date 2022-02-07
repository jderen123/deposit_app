import 'package:deposit_app/infrastructure/router/router.gr.dart';
import 'package:deposit_app/themes/material_themes.dart';
import 'package:flutter/material.dart';

class DepositApp extends StatelessWidget {
  DepositApp({Key? key}) : super(key: key);

  final RootRouter _rootRouter = RootRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _rootRouter.delegate(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
      theme: MaterialThemes.primary(context),
    );
  }
}
