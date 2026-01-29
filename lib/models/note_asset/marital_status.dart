import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MaritalStatus {
  @JsonValue('SOLTERO')
  SOLTERO,

  @JsonValue('CASADO')
  CASADO,

  @JsonValue('UNIONHECHOESTABLE')
  UNIONHECHOESTABLE,

  @JsonValue('DIVORCIADO')
  DIVORCIADO,

  @JsonValue('VIUDO')
  VIUDO
}