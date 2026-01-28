// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obstetric_gynecological_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObstetricGynecologicalHistory _$ObstetricGynecologicalHistoryFromJson(
  Map<String, dynamic> json,
) => ObstetricGynecologicalHistory(
  menarcheAge: (json['menarcheAge'] as num).toInt(),
  sexActivityStartingAge: (json['sexActivityStartingAge'] as num?)?.toInt(),
  sexualPartnerCount: (json['sexualPartnerCount'] as num).toInt(),
  gravidityCount: (json['gravidityCount'] as num).toInt(),
  parityCount: (json['parityCount'] as num).toInt(),
  cesareanCount: (json['cesareanCount'] as num).toInt(),
  abortionCount: (json['abortionCount'] as num).toInt(),
  curettageCount: (json['curettageCount'] as num).toInt(),
  birthControl: json['birthControl'] as bool,
  birthControlMethod: json['birthControlMethod'] as String?,
  lastMenstrualPeriod: DateTime.parse(json['lastMenstrualPeriod'] as String),
  amenorrheaWeeksCount: (json['amenorrheaWeeksCount'] as num).toInt(),
  menopause: json['menopause'] as bool,
  menopauseDate: json['menopauseDate'] as String?,
  hormoneReplacement: json['hormoneReplacement'] as bool,
  hormoneReplacementInfo: json['hormoneReplacementInfo'] as String?,
  pap: json['pap'] as bool,
  lastPapInfo: json['lastPapInfo'] as String?,
);

Map<String, dynamic> _$ObstetricGynecologicalHistoryToJson(
  ObstetricGynecologicalHistory instance,
) => <String, dynamic>{
  'menarcheAge': instance.menarcheAge,
  'sexActivityStartingAge': instance.sexActivityStartingAge,
  'sexualPartnerCount': instance.sexualPartnerCount,
  'gravidityCount': instance.gravidityCount,
  'parityCount': instance.parityCount,
  'cesareanCount': instance.cesareanCount,
  'abortionCount': instance.abortionCount,
  'curettageCount': instance.curettageCount,
  'birthControl': instance.birthControl,
  'birthControlMethod': instance.birthControlMethod,
  'lastMenstrualPeriod': instance.lastMenstrualPeriod.toIso8601String(),
  'amenorrheaWeeksCount': instance.amenorrheaWeeksCount,
  'menopause': instance.menopause,
  'menopauseDate': instance.menopauseDate,
  'hormoneReplacement': instance.hormoneReplacement,
  'hormoneReplacementInfo': instance.hormoneReplacementInfo,
  'pap': instance.pap,
  'lastPapInfo': instance.lastPapInfo,
};
