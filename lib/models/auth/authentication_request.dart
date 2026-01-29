import 'package:json_annotation/json_annotation.dart';

part 'authentication_request.g.dart';

@JsonSerializable()
class AuthenticationRequest {
  
  AuthenticationRequest({
    required this.email,
    required this.password
  });

  final String email;
  final String password;

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
    _$AuthenticationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationRequestToJson(this);
}