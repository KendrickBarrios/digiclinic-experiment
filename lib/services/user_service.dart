import 'dart:convert';

import 'package:digiclinic_experiment/models/user/user.dart';
import 'package:digiclinic_experiment/services/core/api_client.dart';
import 'package:digiclinic_experiment/services/service_utils.dart';

class UserService {

  const UserService(this._apiClient);

  final ApiClient _apiClient;
  final _baseRoute = '/users';
  final _resource = 'usuario';
  final _resources = 'usuarios';

  Future<User?> getById(int id) async {
    final response = await _apiClient.get('$_baseRoute/$id');

    evaluateStatusCode(response.statusCode, EndpointType.unassociatedResource, _resource);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final data = decoded['data'];

    return data != null ? User.fromJson(data) : null;
  }

  Future<List<User>> getActive(
    int id, {
    int page = 0,
    int size = 10
  }) async {
    final response = await _apiClient.get('$_baseRoute/active?page=$page&size=$size');

    evaluateStatusCode(response.statusCode, EndpointType.unassociatedResource, _resources);

    final decoded = (response.body) as Map<String, dynamic>;
    final List data = decoded['data'];

    return data.map((e) => User.fromJson(e)).toList();
  }
}