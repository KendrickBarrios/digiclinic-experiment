// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_pathological_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonPathologicalHistory _$NonPathologicalHistoryFromJson(
  Map<String, dynamic> json,
) => NonPathologicalHistory(
  completeVaccines: json['completeVaccines'] as bool,
  completeVaccinesInfo: json['completeVaccinesInfo'] as String?,
  dailySleepHours: (json['dailySleepHours'] as num).toInt(),
  dailyWorkHours: (json['dailyWorkHours'] as num).toInt(),
  physicalActivityHours: (json['physicalActivityHours'] as num).toInt(),
  physicalActivity: json['physicalActivity'] as String?,
  diet: json['diet'] as String,
  tobaccoUse: json['tobaccoUse'] as bool,
  tobaccoPackYears: (json['tobaccoPackYears'] as num?)?.toInt(),
  tobaccoUseStartingAge: (json['tobaccoUseStartingAge'] as num?)?.toInt(),
  tobaccoUseCeaseAge: (json['tobaccoUseCeaseAge'] as num?)?.toInt(),
  tobaccoUseYears: (json['tobaccoUseYears'] as num?)?.toInt(),
  alcoholConsumption: json['alcoholConsumption'] as bool,
  alcoholQuantityFrequency: json['alcoholQuantityFrequency'] as String?,
  alcoholStartingAge: (json['alcoholStartingAge'] as num?)?.toInt(),
  alcoholCeaseAge: (json['alcoholCeaseAge'] as num?)?.toInt(),
  alcoholConsumptionYears: (json['alcoholConsumptionYears'] as num?)?.toInt(),
  drugAbuse: json['drugAbuse'] as bool,
  drugType: json['drugType'] as String?,
  drugQuantityFrequency: json['drugQuantityFrequency'] as String?,
  drugStartingAge: (json['drugStartingAge'] as num?)?.toInt(),
  drugCeaseAge: (json['drugCeaseAge'] as num?)?.toInt(),
  drugAbuseYears: (json['drugAbuseYears'] as num?)?.toInt(),
  chronicMedication: json['chronicMedication'] as bool,
  currentMedicationNumber: (json['currentMedicationNumber'] as num?)?.toInt(),
  medicationNameDosage: json['medicationNameDosage'] as String?,
  otherHabits: json['otherHabits'] as String?,
);

Map<String, dynamic> _$NonPathologicalHistoryToJson(
  NonPathologicalHistory instance,
) => <String, dynamic>{
  'completeVaccines': instance.completeVaccines,
  'completeVaccinesInfo': instance.completeVaccinesInfo,
  'dailySleepHours': instance.dailySleepHours,
  'dailyWorkHours': instance.dailyWorkHours,
  'physicalActivityHours': instance.physicalActivityHours,
  'physicalActivity': instance.physicalActivity,
  'diet': instance.diet,
  'tobaccoUse': instance.tobaccoUse,
  'tobaccoPackYears': instance.tobaccoPackYears,
  'tobaccoUseStartingAge': instance.tobaccoUseStartingAge,
  'tobaccoUseCeaseAge': instance.tobaccoUseCeaseAge,
  'tobaccoUseYears': instance.tobaccoUseYears,
  'alcoholConsumption': instance.alcoholConsumption,
  'alcoholQuantityFrequency': instance.alcoholQuantityFrequency,
  'alcoholStartingAge': instance.alcoholStartingAge,
  'alcoholCeaseAge': instance.alcoholCeaseAge,
  'alcoholConsumptionYears': instance.alcoholConsumptionYears,
  'drugAbuse': instance.drugAbuse,
  'drugType': instance.drugType,
  'drugQuantityFrequency': instance.drugQuantityFrequency,
  'drugStartingAge': instance.drugStartingAge,
  'drugCeaseAge': instance.drugCeaseAge,
  'drugAbuseYears': instance.drugAbuseYears,
  'chronicMedication': instance.chronicMedication,
  'currentMedicationNumber': instance.currentMedicationNumber,
  'medicationNameDosage': instance.medicationNameDosage,
  'otherHabits': instance.otherHabits,
};
