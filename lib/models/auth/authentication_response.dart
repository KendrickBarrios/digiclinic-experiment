import 'package:json_annotation/json_annotation.dart';

part 'authentication_response.g.dart';

@JsonSerializable()
class AuthenticationResponse {
  
  AuthenticationResponse({
    required this.token
  });

  final String token;

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
    _$AuthenticationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}