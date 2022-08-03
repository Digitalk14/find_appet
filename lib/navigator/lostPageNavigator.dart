import 'package:find_appet/pages/lost/lost.dart';
import 'package:flutter/material.dart';

import '../pages/lost/lost-card.dart';

class LostPageNavigator extends StatefulWidget {
  const LostPageNavigator({Key? key}) : super(key: key);

  @override
  State<LostPageNavigator> createState() => _LostPageNavigatorState();
}

GlobalKey<NavigatorState> _lostPageNavigatorKey = GlobalKey<NavigatorState>();

class _LostPageNavigatorState extends State<LostPageNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _lostPageNavigatorKey,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(settings: settings, builder: (BuildContext context){
          switch (settings.name) {
            case '/lost-card':
              return LostCardPage();
            default: 
              return LostPage();
          }
        },);
      },
    );
  }
}