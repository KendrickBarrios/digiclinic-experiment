import 'package:json_annotation/json_annotation.dart';

part 'prenatal_history.g.dart';

@JsonSerializable()
class PrenatalHistory {

  PrenatalHistory({
    required this.gravidityCount,
    required this.parityCount,
    required this.cesareanCount,
    required this.abortionCount,
    required this.lastMenstrualPeriod,
    this.abortionInfo,
    this.cesareanCauses,
    this.cesareanEstablishment,
    required this.prenatalAppointmentsInfo,
    required this.motherChronicDiseases,
    required this.pregnancyDiseases,
    required this.pregnancyMedication,
    required this.pregnancyComplications
  });

  final int gravidityCount;
  final int parityCount;
  final int cesareanCount;
  final int abortionCount;
  final DateTime lastMenstrualPeriod;
  final String? abortionInfo;
  final String? cesareanCauses;
  final String? cesareanEstablishment;
  final String prenatalAppointmentsInfo;
  final String motherChronicDiseases;
  final String pregnancyDiseases;
  final String pregnancyMedication;
  final String pregnancyComplications;

  factory PrenatalHistory.fromJson(Map<String, dynamic> json) =>
    _$PrenatalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$PrenatalHistoryToJson(this);
}