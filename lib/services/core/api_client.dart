import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  
  ApiClient(this.baseUrl);

  final String baseUrl;

  Future<http.Response> get(
    String path, {
    Map<String, String>? headers
  }) {
    return http.get(
      Uri.parse('$baseUrl$path'),
      headers: _defaultHeaders(headers)
    );
  }

  Future<http.Response> post(
    String path, {
    Object? body,
    Map<String, String>? headers
  }) {
    return http.post(
      Uri.parse('$baseUrl$path'),
      headers: _defaultHeaders(headers),
      body: jsonEncode(body)
    );
  }

  Map<String, String> _defaultHeaders(Map<String, String>? headers) {
    return {
      'Content-Type': 'application/json',
      ...?headers,
    };
  }
}