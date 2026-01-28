import 'package:json_annotation/json_annotation.dart';

part 'non_pathological_history.g.dart';

@JsonSerializable()
class NonPathologicalHistory {

  NonPathologicalHistory({
    required this.completeVaccines,
    this.completeVaccinesInfo,
    required this.dailySleepHours,
    required this.dailyWorkHours,
    required this.physicalActivityHours,
    this.physicalActivity,
    required this.diet,
    required this.tobaccoUse,
    this.tobaccoPackYears,
    this.tobaccoUseStartingAge,
    this.tobaccoUseCeaseAge,
    this.tobaccoUseYears,
    required this.alcoholConsumption,
    this.alcoholQuantityFrequency,
    this.alcoholStartingAge,
    this.alcoholCeaseAge,
    this.alcoholConsumptionYears,
    required this.drugAbuse,
    this.drugType,
    this.drugQuantityFrequency,
    this.drugStartingAge,
    this.drugCeaseAge,
    this.drugAbuseYears,
    required this.chronicMedication,
    this.currentMedicationNumber,
    this.medicationNameDosage,
    this.otherHabits
  });

  final bool completeVaccines;
  final String? completeVaccinesInfo;
  final int dailySleepHours;
  final int dailyWorkHours;
  final int physicalActivityHours;
  final String? physicalActivity;
  final String diet;
  final bool tobaccoUse;
  final int? tobaccoPackYears;
  final int? tobaccoUseStartingAge;
  final int? tobaccoUseCeaseAge;
  final int? tobaccoUseYears;
  final bool alcoholConsumption;
  final String? alcoholQuantityFrequency;
  final int? alcoholStartingAge;
  final int? alcoholCeaseAge;
  final int? alcoholConsumptionYears;
  final bool drugAbuse;
  final String? drugType;
  final String? drugQuantityFrequency;
  final int? drugStartingAge;
  final int? drugCeaseAge;
  final int? drugAbuseYears;
  final bool chronicMedication;
  final int? currentMedicationNumber;
  final String? medicationNameDosage;
  final String? otherHabits;

  factory NonPathologicalHistory.fromJson(Map<String, dynamic> json) =>
    _$NonPathologicalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$NonPathologicalHistoryToJson(this);
}