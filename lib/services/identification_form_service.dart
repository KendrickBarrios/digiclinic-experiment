import 'dart:convert';

import 'package:digiclinic_experiment/models/identification_form/identification_form.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/service_utils.dart';

class IdentificationFormService {

  IdentificationFormService(this._apiClient);

  final ApiClient _apiClient;
  final _baseRoute = '/identification-forms';
  // final _resource = 'hoja de identificación';
  final _resources = 'hojas de identificación';

  Future<List<IdentificationForm>> getActiveByLastUpdated({
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get(
      '$_baseRoute/active-by-last-update?page=$page&size=$size'
    );

    evaluateStatusCode(response.statusCode, EndpointType.unassociatedResource, _resources);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => IdentificationForm.fromJson(e)).toList();
  }

  Future<List<IdentificationForm>> getActiveByRecordId(
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

    return data.map((e) => IdentificationForm.fromJson(e)).toList();
  }
}