import 'dart:convert';

import 'package:digiclinic_experiment/models/clinical_record/clinical_record.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/service_utils.dart';

class ClinicalRecordService {

  ClinicalRecordService(this._apiClient);

  final ApiClient _apiClient;
  final _baseRoute = '/records';
  // final _resource = 'expediente clínico';
  final _resources = 'expedientes clínicos';

  Future<List<ClinicalRecord>> getActiveByLastUpdated({
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get(
      '$_baseRoute/active-by-last-updated?page=$page&size=$size'
    );

    evaluateStatusCode(response.statusCode, EndpointType.unassociatedResource, _resources);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => ClinicalRecord.fromJson(e)).toList();
  }
}