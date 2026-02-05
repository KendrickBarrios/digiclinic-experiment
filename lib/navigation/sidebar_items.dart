import 'package:flutter/material.dart';

import 'app_route.dart';
import 'sidebar_item.dart';

const sidebarItems = [
  SidebarItem(
    route: AppRoute.home,
    icon: Icons.house,
    label: 'Inicio'
  ),
  SidebarItem(
    route: AppRoute.appointments,
    icon: Icons.calendar_month,
    label: 'Citas programadas'
  ),
  SidebarItem(
    route: AppRoute.account,
    icon: Icons.person,
    label: 'Cuenta'
  ),
  SidebarItem(
    route: AppRoute.settings,
    icon: Icons.build,
    label: 'Ajustes'
  )
];