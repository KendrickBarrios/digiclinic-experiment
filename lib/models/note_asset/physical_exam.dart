import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';

part 'physical_exam.g.dart';

@JsonSerializable()
class PhysicalExam {

  PhysicalExam({
    required this.pulse,
    required this.respiration,
    required this.bloodPressure,
    required this.temperature,
    required this.weight,
    required this.bmi,
    required this.bsa,
    this.abdominalPerimeter,
    required this.generalAspect,
    required this.skinAndMucosae,
    required this.skull,
    required this.scalp,
    required this.eyes,
    required this.ears,
    required this.nose,
    required this.mouth,
    required this.neck,
    required this.thoracicCavity,
    required this.breast,
    required this.lungFields,
    required this.cardiac,
    required this.abdomenAndPelvis,
    this.rectalExam,
    required this.upperLimbs,
    required this.lowerLimbs,
    this.urogenital,
    this.gynecological,
    required this.neurological
  });

  final int pulse;
  final int respiration;
  final String bloodPressure;
  final double temperature;
  final double weight;
  final double bmi;
  final double bsa;
  final double? abdominalPerimeter;
  final String generalAspect;
  final String skinAndMucosae;
  final String skull;
  final String scalp;
  final String eyes;
  final String ears;
  final String nose;
  final String mouth;
  final String neck;
  final String thoracicCavity;
  final String breast;
  final String lungFields;
  final String cardiac;
  final String abdomenAndPelvis;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? rectalExam;
  final String upperLimbs;
  final String lowerLimbs;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? urogenital;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? gynecological;
  final String neurological;

  factory PhysicalExam.fromJson(Map<String, dynamic> json) =>
    _$PhysicalExamFromJson(json);

  Map<String, dynamic> toJson() => _$PhysicalExamToJson(this);
}