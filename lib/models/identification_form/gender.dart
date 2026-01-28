import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum Gender {
  @JsonValue('M')
  M,

  @JsonValue('F')
  F,
}