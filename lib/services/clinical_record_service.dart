import 'dart:convert';

import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';

class ClinicalRecordService {

  ClinicalRecordService(this._apiClient);

  final ApiClient _apiClient;

  Future<List<ClinicalRecord>> getByLastUpdated({
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get(
      '/records/by-last-updated?page$page&size=$size'
    );

    if (response.statusCode != 200) {
      throw Exception('Error al obtener expedientes');
    }

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => ClinicalRecord.fromJson(e)).toList();
  }
}