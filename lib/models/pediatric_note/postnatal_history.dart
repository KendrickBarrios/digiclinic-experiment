import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';

part 'postnatal_history.g.dart';

@JsonSerializable()
class PostnatalHistory {

  PostnatalHistory({
    required this.firstApgar,
    required this.secondApgar,
    required this.weight,
    required this.height,
    required this.asphyxiaSigns,
    this.asphyxiaInfo,
    required this.zeroSeparation,
    required this.permanentlyWithTheirMother,
    required this.hoursWithTheirMother,
    required this.hospitalizationInfo
  });

  final int firstApgar;
  final int secondApgar;
  final double weight;
  final double height;
  final bool asphyxiaSigns;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? asphyxiaInfo;
  final bool zeroSeparation;
  final bool permanentlyWithTheirMother;
  final int hoursWithTheirMother;
  final String hospitalizationInfo;

  factory PostnatalHistory.fromJson(Map<String, dynamic> json) =>
    _$PostnatalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$PostnatalHistoryToJson(this);
}