import 'package:flutter/material.dart';
import 'tab_itemStack.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.home),
        _buildItem(TabItem.found),
        _buildItem(TabItem.lost),
        _buildItem(TabItem.profile),
      ],
      onTap: (index) => onSelectTab(TabItem.values[index]),
      currentIndex: currentTab.index,
      selectedItemColor: Colors.red,
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
}
