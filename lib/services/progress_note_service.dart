import 'dart:convert';

import 'package:digiclinic_experiment/models/progress_note/progress_note.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/service_utils.dart';

class ProgressNoteService {

  ProgressNoteService(this._apiClient);

  final ApiClient _apiClient;
  final _baseRoute = '/progress-notes';
  final _resource = 'hoja de evolución';
  final _resources = 'hojas de evolución';

  Future<List<ProgressNote>> getActiveByRecordId(
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

    return data.map((e) => ProgressNote.fromJson(e)).toList();
  }
}