import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'package:digiclinic_experiment/services/auth/auth_service.dart';
import 'package:digiclinic_experiment/services/clinical_note_service.dart';
import 'package:digiclinic_experiment/services/clinical_record_service.dart';
import 'package:digiclinic_experiment/services/core/credential_storage.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/core/token_storage.dart';
import 'package:digiclinic_experiment/services/preferences_storage.dart';
import 'package:digiclinic_experiment/services/identification_form_service.dart';
import 'package:digiclinic_experiment/services/pediatric_note_service.dart';
import 'package:digiclinic_experiment/services/progress_note_service.dart';
import 'package:digiclinic_experiment/services/user_service.dart';
import 'package:digiclinic_experiment/theme/app_theme.dart';
import 'package:digiclinic_experiment/viewmodels/auth/auth_view_model.dart';
import 'package:digiclinic_experiment/viewmodels/home_view_model.dart';
import 'package:digiclinic_experiment/viewmodels/record_view_model.dart';
import 'package:digiclinic_experiment/views/auth_gate.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1920, 1080),
    minimumSize: Size(1280, 720),
    center: true,
    title: 'DigiClinic'
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.maximize();
    await windowManager.show();
    await windowManager.focus();
  });

  final tokenStorage = TokenStorage();
  final credentialStorage = CredentialStorage();
  final preferencesStorage = PreferencesStorage();
  final apiClient = ApiClient('http://localhost:8080/api', tokenStorage);
  final authService = AuthService(apiClient);
  final authViewModel = AuthViewModel(
    authService,
    tokenStorage,
    credentialStorage,
    preferencesStorage
  );

  runApp(
    MultiProvider(
      providers: [
        Provider<ApiClient>.value(value: apiClient),
        Provider<ClinicalRecordService>(
          create: (context) =>
            ClinicalRecordService(context.read<ApiClient>()),
        ),
        Provider<IdentificationFormService>(
          create: (context) =>
            IdentificationFormService(context.read<ApiClient>()),
        ),
        Provider<ClinicalNoteService>(
          create: (context) =>
            ClinicalNoteService(context.read<ApiClient>()),
        ),
        Provider<PediatricNoteService>(
          create: (context) =>
            PediatricNoteService(context.read<ApiClient>()),
        ),
        Provider<ProgressNoteService>(
          create: (context) =>
            ProgressNoteService(context.read<ApiClient>()),
        ),
        Provider<UserService>(
          create: (context) =>
            UserService(context.read<ApiClient>()),
        ),
        ChangeNotifierProvider(
          create: (context) =>
            HomeViewModel(context.read<ClinicalRecordService>()),
        ),
        ChangeNotifierProvider<AuthViewModel>(
          create: (_) => authViewModel
        ),
        ChangeNotifierProvider<RecordViewModel>(
          create: (context) => RecordViewModel(
            identificationFormService: context.read<IdentificationFormService>(),
            clinicalNoteService: context.read<ClinicalNoteService>(),
            pediatricNoteService: context.read<PediatricNoteService>(),
            progressNoteService: context.read<ProgressNoteService>(),
            userService: context.read<UserService>(),
          ),
        ),
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
      theme: AppTheme.light(),
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
    );
  }
}