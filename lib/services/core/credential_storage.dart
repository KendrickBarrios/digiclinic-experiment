import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CredentialStorage {

  static const _emailKey = 'stored_email';
  static const _passwordKey = 'stored_password';

  final _storage = FlutterSecureStorage();

  Future<void> saveCredentials({
    required String email,
    required String password
  }) async {
    await _storage.write(key: _emailKey, value: email);
    await _storage.write(key: _passwordKey, value: password);
  }

  Future<String?> getEmail() async {
    return _storage.read(key: _emailKey);
  }

  Future<String?> getPassword() async {
    return _storage.read(key: _passwordKey);
  }

  Future<void> clearCredentials() async {
    await _storage.delete(key: _emailKey);
    await _storage.delete(key: _passwordKey);
  }
}