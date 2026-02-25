import 'package:digiclinic_experiment/models/model_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'birth_history.g.dart';

@JsonSerializable()
class BirthHistory {

  BirthHistory({
    this.birthDatetime,
    required this.laborDuration,
    required this.gestationalAge,
    required this.laborResponsible,
    required this.deliveryMethod,
    required this.fetalPresentation,
    required this.laborComplications
  });

  @JsonKey(fromJson: nullableStringFromJson)
  final String? birthDatetime;
  final String laborDuration;
  final String gestationalAge;
  final String laborResponsible;
  final String deliveryMethod;
  final String fetalPresentation;
  final String laborComplications;

  factory BirthHistory.fromJson(Map<String, dynamic> json) =>
    _$BirthHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$BirthHistoryToJson(this);
}