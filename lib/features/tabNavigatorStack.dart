import 'package:flutter/material.dart';
import 'tab_itemStack.dart';
import '../pages/lost/lost.dart';
import '../pages/home/home.dart';
import '../pages/found/found.dart';
import '../pages/profile/profile.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String found = '/lost';
  static const String lost = '/found';
  static const String profile = '/profile';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, route) {
    var routeBuilders = _routeBuilders(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => routeBuilders[TabNavigatorRoutes.lost]!(context)));
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) => HomePage(
            onPush: (route) => _push(context, route),
          ),
      TabNavigatorRoutes.lost: (context) => LostPage(),
      TabNavigatorRoutes.found: (context) => FoundPage(),
      TabNavigatorRoutes.profile: (context) => ProfilePage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }
}
