import 'dart:convert';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';

class ClinicalRecordService {

  ClinicalRecordService(this._apiClient);

  final ApiClient _apiClient;
  final String _baseRoute = '/records';

  Future<List<ClinicalRecord>> getActiveByLastUpdated({
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get(
      '$_baseRoute/active-by-last-updated?page=$page&size=$size'
    );

    if (response.statusCode != 200) {
      throw Exception('Error al obtener expedientes');
    }

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => ClinicalRecord.fromJson(e)).toList();
  }
}