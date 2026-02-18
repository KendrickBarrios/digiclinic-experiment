import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';

part 'vaccine_record.g.dart';

@JsonSerializable()
class VaccineRecord {

  VaccineRecord({
    required this.vaccine,
    this.firstDose,
    this.secondDose,
    this.thirdDose,
    this.firstReinforcement,
    this.secondReinforcement,
    this.thirdReinforcement,
    this.fourthReinforcement
  });

  final String vaccine;
  final DateTime? firstDose;
  final DateTime? secondDose;
  final DateTime? thirdDose;
  final DateTime? firstReinforcement;
  final DateTime? secondReinforcement;
  final DateTime? thirdReinforcement;
  final DateTime? fourthReinforcement;

  factory VaccineRecord.fromJson(Map<String, dynamic> json) =>
    _$VaccineRecordFromJson(json);

  Map<String, dynamic> toJson() => _$VaccineRecordToJson(this);
}