import 'dart:convert';

import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/models/api_response.dart';
import 'package:digiclinic_experiment/models/auth/authentication_request.dart';
import 'package:digiclinic_experiment/models/auth/authentication_response.dart';

class AuthService {
  AuthService(this._apiClient);

  final ApiClient _apiClient;

  Future<AuthenticationResponse> login({
    required String email,
    required String password
  }) async {
    final request = AuthenticationRequest(email: email, password: password);

    final response = await _apiClient.post('/login', body: request.toJson());

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      final apiResponse = ApiResponse<AuthenticationResponse>.fromJson(
        json,
        (data) => AuthenticationResponse.fromJson(
          data as Map<String, dynamic>
        )
      );

      if (apiResponse.data == null) throw Exception('Token no recibido');

      return apiResponse.data!;
    }

    if (response.statusCode == 401) throw Exception(json['message'] ?? 'Credenciales inválidas');

    throw Exception(json['message'] ?? 'Error inesperado');
  }
}