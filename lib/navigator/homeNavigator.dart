import 'package:find_appet/pages/home/home.dart';
import 'package:find_appet/pages/profile/login/login.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomePageNavigator extends StatefulWidget {
  const HomePageNavigator({Key? key}) : super(key: key);

  @override
  State<HomePageNavigator> createState() => _HomePageNavigatorState();
}

GlobalKey<NavigatorState> _homePageNavigatorKey = GlobalKey<NavigatorState>();

class _HomePageNavigatorState extends State<HomePageNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _homePageNavigatorKey,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/login':
                return const ProfileLogin();
              default:
                return HomePage();
            }
          }
        );
      },
    );
  }
}