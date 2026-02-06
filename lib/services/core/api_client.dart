import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:digiclinic_experiment/services/core/token_storage.dart';

class ApiClient {
  
  ApiClient(this.baseUrl, this._tokenStorage);

  final String baseUrl;
  final TokenStorage _tokenStorage;

  Future<http.Response> get(
    String path, {
    Map<String, String>? headers
  }) async {
    final resolvedHeaders = await _defaultHeaders(path, headers);

    return http.get(
      Uri.parse('$baseUrl$path'),
      headers: resolvedHeaders 
    );
  }

  Future<http.Response> post(
    String path, {
    Object? body,
    Map<String, String>? headers
  }) async {
    final resolvedHeaders = await _defaultHeaders(path, headers);

    return http.post(
      Uri.parse('$baseUrl$path'),
      headers: resolvedHeaders,
      body: jsonEncode(body)
    );
  }

  Future<http.Response> put(
    String path, {
    Object? body,
    Map<String, String>? headers
  }) async {
    final resolvedHeaders = await _defaultHeaders(path, headers);

    return http.put(
      Uri.parse('$baseUrl$path'),
      headers: resolvedHeaders,
      body: jsonEncode(body)
    );
  }


  Future<http.Response> patch(
    String path, {
    Object? body,
    Map<String, String>? headers
  }) async {
    final resolvedHeaders = await _defaultHeaders(path, headers);

    return http.patch(
      Uri.parse('$baseUrl$path'),
      headers: resolvedHeaders,
      body: jsonEncode(body)
    );
  }

  Future<http.Response> delete(
    String path, {
    Map<String, String>? headers
  }) async {
    final resolvedHeaders = await _defaultHeaders(path, headers);

    return http.delete(
      Uri.parse('$baseUrl$path'),
      headers: resolvedHeaders
    );
  }

  Future<Map<String, String>> _defaultHeaders(
    String path,
    Map<String, String>? headers
  ) async {
    final baseHeaders = <String, String> {
      'Content-Type': 'application/json',
    };

    if (path != '/login') {
      final token = await _tokenStorage.getToken();
      if (token != null && token.isNotEmpty) {
        baseHeaders['Authorization'] = 'Bearer $token';
      }
    }

    return {
      ...baseHeaders,
      ...?headers
    };
  }
}