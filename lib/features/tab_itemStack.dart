import 'package:flutter/material.dart';

enum TabItem { home, found, lost, profile }

const Map<TabItem, String> tabName = {
  TabItem.home: 'home',
  TabItem.found: 'found',
  TabItem.lost: 'lost',
  TabItem.profile: 'profile',
};
