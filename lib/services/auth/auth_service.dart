import 'dart:convert';

import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/models/api_response.dart';
import 'package:digiclinic_experiment/models/auth/authentication_request.dart';
import 'package:digiclinic_experiment/models/auth/authentication_response.dart';
import 'package:digiclinic_experiment/services/core/token_storage.dart';

class AuthService {
  AuthService(this._apiClient, this._tokenStorage);

  final ApiClient _apiClient;
  final TokenStorage _tokenStorage;

  Future<String> login({
    required String email,
    required String password
  }) async {
    final request = AuthenticationRequest(email: email, password: password);

    final response = await _apiClient.post('/login', body: request.toJson());

    final json = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      final apiResponse = ApiResponse<AuthenticationResponse>.fromJson(
        json,
        (data) => AuthenticationResponse.fromJson(
          data as Map<String, dynamic>
        )
      );

      final token = apiResponse.data?.token;
      if (token == null) throw Exception('Token no recibido');

      return token;
    }

    if (response.statusCode == 401) throw Exception(json['message'] ?? 'Credenciales inválidas');

    throw Exception(json['message'] ?? 'Error al autenticar');
  }
}