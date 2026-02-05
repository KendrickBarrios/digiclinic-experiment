import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digiclinic_experiment/shell/main_shell.dart';
import 'package:digiclinic_experiment/viewmodels/auth/auth_status.dart';
import 'package:digiclinic_experiment/viewmodels/auth/auth_view_model.dart';
import 'package:digiclinic_experiment/views/login_view.dart';

class AuthGate extends StatelessWidget {

  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthViewModel>();

    switch (auth.status) {
      case AuthStatus.loading:
      case AuthStatus.unknown:
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      
      case AuthStatus.authenticated:
        return const MainShell();
      
      case AuthStatus.unauthenticated:
      case AuthStatus.error:
        return const LoginView();
    }
  }
}