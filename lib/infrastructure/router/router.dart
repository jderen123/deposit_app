import 'package:auto_route/auto_route.dart';
import 'package:deposit_app/features/home/presentation/home_screen.dart';
import 'package:deposit_app/features/view_deposits/presentation/view_deposits_screen.dart';
import 'package:flutter/material.dart';

StackRouter router(BuildContext context) => context.router;
@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      name: 'HomeRouter',
      initial: true,
      path: '',
    ),
    AutoRoute(
      page: ViewDepositsScreen,
      name: 'ViewDepositsRoute',
      path: 'view-deposits',
    ),
  ],
)
class $RootRouter {}
