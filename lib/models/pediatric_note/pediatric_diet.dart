import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';

part 'pediatric_diet.g.dart';

@JsonSerializable()
class PediatricDiet {

  PediatricDiet({
    required this.exclusiveBreastfeeding,
    required this.mixedBreastfeeding,
    this.exclusiveBreastfeedingDuration,
    this.mixedBreastFeedingDuration,
    this.weaning
  });

  final bool exclusiveBreastfeeding;
  final bool mixedBreastfeeding;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? exclusiveBreastfeedingDuration;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? mixedBreastFeedingDuration;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? weaning;

  factory PediatricDiet.fromJson(Map<String, dynamic> json) =>
    _$PediatricDietFromJson(json);

  Map<String, dynamic> toJson() => _$PediatricDietToJson(this);
}