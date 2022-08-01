import 'package:find_appet/pages/profile/login/login.dart';
import 'package:find_appet/pages/profile/profile.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ProfilePageNavigator extends StatefulWidget {
  const ProfilePageNavigator({Key? key}) : super(key: key);

  @override
  State<ProfilePageNavigator> createState() => _ProfilePageNavigatorState();
}

GlobalKey<NavigatorState> _ProfilePageNavigatorKey = GlobalKey<NavigatorState>();

class _ProfilePageNavigatorState extends State<ProfilePageNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _ProfilePageNavigatorKey,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/login':
                return ProfileLogin();
              default:
                return ProfilePage();
            }
          }
        );
      },
    );
  }
}