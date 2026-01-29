import 'package:digiclinic_experiment/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/core/token_storage.dart';
import 'package:digiclinic_experiment/services/preferences_storage.dart';
import 'package:digiclinic_experiment/viewmodels/auth/auth_view_model.dart';
import 'package:digiclinic_experiment/views/auth_gate.dart';

void main() {

  final tokenStorage = TokenStorage();
  final preferencesStorage = PreferencesStorage();
  final apiClient = ApiClient('http://localhost:8080/api', tokenStorage);
  final authService = AuthService(apiClient);
  final authViewModel = AuthViewModel(
    authService,
    tokenStorage,
    preferencesStorage
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(
          create: (_) => authViewModel
        )
      ],
      child: const DigiClinicApp(),
    )
  );
}

class DigiClinicApp extends StatelessWidget {

  const DigiClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DigiClinic',
      debugShowCheckedModeBanner: true,
      home: const AuthGate(),
    );
  }
}