import 'package:flutter/material.dart';
import 'features/tabNavigatorStack.dart';
import 'pages/home/home.dart';
import 'pages/found/found.dart';
import 'pages/lost/lost.dart';
import 'pages/profile/profile.dart';
import 'pages/profile/login/login.dart';
import 'features/tab_itemStack.dart';
import 'features//bottom_navigationStack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  var _currentTab = TabItem.home;
  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.lost: GlobalKey<NavigatorState>(),
    TabItem.found: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem != _currentTab) {
      setState(() => _currentTab = tabItem);
    }
    // if (tabItem == _currentTab) {
    //   print(_navigatorKeys[tabItem]);
    //   // _navigatorKeys[tabItem]!
    //   //     .currentState!
    //   //     .popUntil(((route) => route.isFirst));
    // } else {}
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentTab != TabItem.home) {
            _selectTab(TabItem.home);
            return false;
          }
        }

        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Offstage(
              offstage: _currentTab != TabItem.home,
              child: HomePage(
                onPush: ((value) => {_selectTab(value)}),
              ),
            ),
            Offstage(
              offstage: _currentTab != TabItem.found,
              child: LostPage(),
            ),
            Offstage(
              offstage: _currentTab != TabItem.lost,
              child: FoundPage(),
            ),
            Offstage(
              offstage: _currentTab != TabItem.profile,
              child: ProfilePage(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab.index,
          onTap: (index) => _selectTab(TabItem.values[index]),
          type: BottomNavigationBarType.fixed,
          items: [
            _buildItem(TabItem.home),
            _buildItem(TabItem.found),
            _buildItem(TabItem.lost),
            _buildItem(TabItem.profile),
          ],
        ),
        // bottomNavigationBar: BottomNavigation(
        //   currentTab: _currentTab,
        //   onSelectTab: _selectTab,
        // ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: Colors.blue,
      ),
      label: tabName[tabItem],
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}


// void main() => runApp(MaterialApp(
//       home: Wrapper(),
//       initialRoute: '/home',
//       onGenerateRoute: (settings) {
//         switch (settings.name) {
//           case '/home':
//             return MaterialPageRoute(builder: (context) => HomePage());
//           case '/lost':
//             return MaterialPageRoute(builder: (context) => LostPage());
//           case '/found':
//             return MaterialPageRoute(builder: (context) => FoundPage());
//           case '/profile':
//             return MaterialPageRoute(
//               builder: (context) => const ProfilePage(),
//             );
//           case '/profile/login':
//             return MaterialPageRoute(
//               builder: (context) => const ProfileLogin(),
//             );
//         }
//       },
//     ));

// class Wrapper extends StatefulWidget {
//   const Wrapper({Key? key}) : super(key: key);

//   @override
//   State<Wrapper> createState() => _WrapperState();
// }

// class _WrapperState extends State<Wrapper> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static final List<Widget> _pages = [
//     HomePage(),
//     FoundPage(),
//     LostPage(),
//     ProfilePage(),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _pages.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value) {
//           final routes = ["/", "/lost","/found","/profile"];
//           _selectedIndex = value;
//           Navigator.of(context)
//               .pushNamedAndRemoveUntil(routes[value], (route) => false);
//         },
//         type: BottomNavigationBarType.fixed,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.find_in_page_outlined,
//             ),
//             label: 'Lost',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.business,
//             ),
//             label: 'Found',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.school,
//             ),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         // onTap: _onItemTapped,
//       ),
//     );
//   }
// }
