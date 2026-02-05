import 'package:flutter/material.dart';

import 'app_route.dart';

class SidebarItem {
  const SidebarItem({
    required this.route,
    required this.icon,
    required this.label
  });

  final AppRoute route;
  final IconData icon;
  final String label;
}