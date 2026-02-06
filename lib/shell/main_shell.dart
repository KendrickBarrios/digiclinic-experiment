import 'package:flutter/material.dart';

import 'package:digiclinic_experiment/navigation/app_route.dart';
import 'package:digiclinic_experiment/widgets/side_bar.dart';

import 'package:digiclinic_experiment/views/home_view.dart';
import 'package:digiclinic_experiment/views/search_view.dart';
import 'package:digiclinic_experiment/views/new_record_view.dart';
import 'package:digiclinic_experiment/views/appointments_view.dart';
import 'package:digiclinic_experiment/views/account_view.dart';
import 'package:digiclinic_experiment/views/settings_view.dart';

class MainShell extends StatefulWidget {

  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {

  AppRoute _currentRoute = AppRoute.home;

  void navigateTo(AppRoute route) {
    setState(() {
      _currentRoute = route;
    });
  }

  Widget _buildContent() {
    switch (_currentRoute) {
      case AppRoute.home:
        return HomeView(
          onSearchPressed: () => navigateTo(AppRoute.search),
          onCreateRecordPressed: () => navigateTo(AppRoute.newRecord),
        );
      case AppRoute.search:
        return const SearchView();
      case AppRoute.newRecord:
        return const NewRecordView();
      case AppRoute.appointments:
        return const AppointmentsView();
      case AppRoute.account:
        return const AccountView();
      case AppRoute.settings:
        return const SettingsView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(
            currentRoute: _currentRoute,
            onRouteSelected: (route) {
              setState(() => _currentRoute = route);
            }
          ),
          Expanded(
            child: _buildContent(),
          )
        ],
      ),
    );
  }
}