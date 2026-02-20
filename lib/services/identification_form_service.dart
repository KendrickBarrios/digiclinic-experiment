import 'dart:convert';

import 'package:digiclinic_experiment/models/identification_form/identification_form.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';

class IdentificationFormService {

  IdentificationFormService(this._apiClient);

  final ApiClient _apiClient;
  final String _baseRoute = 'identification-forms';

  Future<List<IdentificationForm>> getActiveByLastUpdated({
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get(
      '$_baseRoute/active-by-last-update?page=$page&size=$size'
    );

    _evaluateStatusCode(response.statusCode);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => IdentificationForm.fromJson(e)).toList();
  }

  Future<List<IdentificationForm>> getActiveByRecordId(int id) async {
    final response = await _apiClient.get(
      '$_baseRoute/active-by-record/$id'
    );

    _evaluateStatusCode(response.statusCode);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => IdentificationForm.fromJson(e)).toList();
  }

  void _evaluateStatusCode(int code) {
    if (code != 200) {
      throw Exception('Error al obtener hojas de identificación');
    }
  }
}