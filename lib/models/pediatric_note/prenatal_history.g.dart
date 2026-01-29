// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prenatal_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrenatalHistory _$PrenatalHistoryFromJson(Map<String, dynamic> json) =>
    PrenatalHistory(
      gravidityCount: (json['gravidityCount'] as num).toInt(),
      parityCount: (json['parityCount'] as num).toInt(),
      cesareanCount: (json['cesareanCount'] as num).toInt(),
      abortionCount: (json['abortionCount'] as num).toInt(),
      lastMenstrualPeriod: DateTime.parse(
        json['lastMenstrualPeriod'] as String,
      ),
      abortionInfo: json['abortionInfo'] as String?,
      cesareanCauses: json['cesareanCauses'] as String?,
      cesareanEstablishment: json['cesareanEstablishment'] as String?,
      prenatalAppointmentsInfo: json['prenatalAppointmentsInfo'] as String,
      motherChronicDiseases: json['motherChronicDiseases'] as String,
      pregnancyDiseases: json['pregnancyDiseases'] as String,
      pregnancyMedication: json['pregnancyMedication'] as String,
      pregnancyComplications: json['pregnancyComplications'] as String,
    );

Map<String, dynamic> _$PrenatalHistoryToJson(PrenatalHistory instance) =>
    <String, dynamic>{
      'gravidityCount': instance.gravidityCount,
      'parityCount': instance.parityCount,
      'cesareanCount': instance.cesareanCount,
      'abortionCount': instance.abortionCount,
      'lastMenstrualPeriod': instance.lastMenstrualPeriod.toIso8601String(),
      'abortionInfo': instance.abortionInfo,
      'cesareanCauses': instance.cesareanCauses,
      'cesareanEstablishment': instance.cesareanEstablishment,
      'prenatalAppointmentsInfo': instance.prenatalAppointmentsInfo,
      'motherChronicDiseases': instance.motherChronicDiseases,
      'pregnancyDiseases': instance.pregnancyDiseases,
      'pregnancyMedication': instance.pregnancyMedication,
      'pregnancyComplications': instance.pregnancyComplications,
    };
