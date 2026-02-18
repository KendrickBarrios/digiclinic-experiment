import 'dart:async';
import 'package:flutter/foundation.dart';

import 'package:digiclinic_experiment/services/core/credential_storage.dart';
import 'package:digiclinic_experiment/viewmodels/auth/auth_status.dart';
import 'package:digiclinic_experiment/services/auth/auth_service.dart';
import 'package:digiclinic_experiment/services/core/token_storage.dart';
import 'package:digiclinic_experiment/services/preferences_storage.dart';

class AuthEvent {

  AuthEvent(this.message);

  final String message;
}

class AuthViewModel extends ChangeNotifier {

  AuthViewModel(
    this._authService,
    this._tokenStorage,
    this._credentialStorage,
    this._preferencesStorage
  ); 

  final AuthService _authService;
  final TokenStorage _tokenStorage;
  final CredentialStorage _credentialStorage;
  final PreferencesStorage _preferencesStorage;
  final _eventController = StreamController<AuthEvent>.broadcast();

  AuthStatus _status = AuthStatus.unauthenticated;

  String? _errorMessage;

  AuthStatus get status => _status;

  void _setStatus(AuthStatus newStatus) {
    _status = newStatus;
    notifyListeners();
  }  

  String? get errorMessage => _errorMessage;

  Stream<AuthEvent> get events => _eventController.stream;

  void _emitEvent(AuthEvent event) {
    _eventController.add(event);
  }

  Future<void> login({
    required String email,
    required String password,
    required bool rememberMe
  }) async {
    _setStatus(AuthStatus.loading);

    try {
      final token = await _authService.login(email: email, password: password);

      await _tokenStorage.saveToken(token);
      await _preferencesStorage.setRememberMe(rememberMe);

      if (rememberMe) {
        await _credentialStorage.saveCredentials(
          email: email,
          password: password
        );
      } else {
        await _credentialStorage.clearCredentials();
      }

      _setStatus(AuthStatus.authenticated);

    } catch (e) {
      _setStatus(AuthStatus.unauthenticated);
      _emitEvent(AuthEvent(e.toString()));
    }
  }

  Future<void> logout() async {
    await _tokenStorage.clearToken();
    _setStatus(AuthStatus.unauthenticated);
  }

  Future<void> tryAutoLogin() async {
    final rememberMe = await _preferencesStorage.getRememberMe();

    if (!rememberMe) return;

    final email = await _credentialStorage.getEmail();
    final password = await _credentialStorage.getPassword();

    if (email == null || password == null) return;

    await login(email: email, password: password, rememberMe: true);
  }

  @override
  void dispose() {
    _eventController.close();
    super.dispose();
  }
}