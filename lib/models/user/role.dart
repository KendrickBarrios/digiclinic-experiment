import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum Role {
  @JsonValue('ADMIN')
  ADMIN, 

  @JsonValue('MANAGER')
  MANAGER, 

  @JsonValue('USER')
  USER,
}
