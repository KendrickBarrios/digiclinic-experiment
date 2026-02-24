import 'dart:convert';

import 'package:digiclinic_experiment/models/clinical_note/clinical_note.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/service_utils.dart';

class ClinicalNoteService {

  ClinicalNoteService(this._apiClient);

  final ApiClient _apiClient;
  final _baseRoute = 'clinical-notes';
  // final _resource = 'historia clínica';
  final _resources = 'historias clínicas';

  Future<List<ClinicalNote>> getActiveByRecordId(
    int id, {
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get(
      '$_baseRoute/active-by-record/$id?page=$page&size=$size'
    );

    evaluateStatusCode(response.statusCode, EndpointType.byRecord, _resources);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => ClinicalNote.fromJson(e)).toList();
  }
}