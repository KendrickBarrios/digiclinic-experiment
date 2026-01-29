import 'package:json_annotation/json_annotation.dart';

part 'pediatric_diet.g.dart';

@JsonSerializable()
class PediatricDiet {

  PediatricDiet({
    required this.exclusiveBreastfeeding,
    required this.mixedBreastFeeding,
    required this.exclusiveBreastfeedingDuration,
    this.mixedBreastFeedingDuration,
    this.weaning
  });

  final bool exclusiveBreastfeeding;
  final bool mixedBreastFeeding;
  final String exclusiveBreastfeedingDuration;
  final String? mixedBreastFeedingDuration;
  final String? weaning;

  factory PediatricDiet.fromJson(Map<String, dynamic> json) =>
    _$PediatricDietFromJson(json);

  Map<String, dynamic> toJson() => _$PediatricDietToJson(this);
}