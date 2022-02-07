// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/home/presentation/home_screen.dart' as _i1;
import '../../features/view_deposits/presentation/view_deposits_screen.dart'
    as _i2;
import '../../models/deposit.model.dart' as _i5;

class RootRouter extends _i3.RootStackRouter {
  RootRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    ViewDepositsRoute.name: (routeData) {
      final args = routeData.argsAs<ViewDepositsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.ViewDepositsScreen(key: args.key, deposits: args.deposits));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '', fullMatch: true),
        _i3.RouteConfig(HomeRouter.name, path: ''),
        _i3.RouteConfig(ViewDepositsRoute.name, path: 'view-deposits')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.ViewDepositsScreen]
class ViewDepositsRoute extends _i3.PageRouteInfo<ViewDepositsRouteArgs> {
  ViewDepositsRoute({_i4.Key? key, required List<_i5.Deposit> deposits})
      : super(ViewDepositsRoute.name,
            path: 'view-deposits',
            args: ViewDepositsRouteArgs(key: key, deposits: deposits));

  static const String name = 'ViewDepositsRoute';
}

class ViewDepositsRouteArgs {
  const ViewDepositsRouteArgs({this.key, required this.deposits});

  final _i4.Key? key;

  final List<_i5.Deposit> deposits;

  @override
  String toString() {
    return 'ViewDepositsRouteArgs{key: $key, deposits: $deposits}';
  }
}
