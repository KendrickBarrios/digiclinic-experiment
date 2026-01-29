import 'package:digiclinic_experiment/viewmodels/auth/auth_status.dart';
import 'package:flutter/foundation.dart';
import 'package:digiclinic_experiment/services/auth/auth_service.dart';
import 'package:digiclinic_experiment/services/core/token_storage.dart';
import 'package:digiclinic_experiment/services/preferences_storage.dart';

class AuthViewModel extends ChangeNotifier {

  AuthViewModel(
    this._authService,
    this._tokenStorage,
    this._preferencesStorage
  ); 

  final AuthService _authService;
  final TokenStorage _tokenStorage;
  final PreferencesStorage _preferencesStorage;

  AuthStatus _status = AuthStatus.unknown;

  String? _errorMessage;

  AuthStatus get status => _status;

  void _setStatus(AuthStatus newStatus) {
    _status = newStatus;
    notifyListeners();
  }  

  String? get errorMessage => _errorMessage;

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

      _setStatus(AuthStatus.authenticated);
    } catch (e) {
      _errorMessage = e.toString();
      _setStatus(AuthStatus.error);
    }
  }

  Future<void> logout() async {
    await _tokenStorage.clearToken();
    _setStatus(AuthStatus.unauthenticated);
  }
}