// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pediatric_personal_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediatricPersonalHistory _$PediatricPersonalHistoryFromJson(
  Map<String, dynamic> json,
) => PediatricPersonalHistory(
  prenatalHistory: PrenatalHistory.fromJson(
    json['prenatalHistory'] as Map<String, dynamic>,
  ),
  birthHistory: BirthHistory.fromJson(
    json['birthHistory'] as Map<String, dynamic>,
  ),
  postnatalHistory: PostnatalHistory.fromJson(
    json['postnatalHistory'] as Map<String, dynamic>,
  ),
  pediatricDiet: PediatricDiet.fromJson(
    json['pediatricDiet'] as Map<String, dynamic>,
  ),
  vaccinesHistory: (json['vaccinesHistory'] as List<dynamic>?)
      ?.map((e) => VaccineRecord.fromJson(e as Map<String, dynamic>))
      .toList(),
  psychomotorDevelopment: PsychomotorDevelopment.fromJson(
    json['psychomotorDevelopment'] as Map<String, dynamic>,
  ),
  socioeconomicContext: SocioeconomicContext.fromJson(
    json['socioeconomicContext'] as Map<String, dynamic>,
  ),
  communicableDiseases: (json['communicableDiseases'] as List<dynamic>?)
      ?.map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  previousSurgeries: (json['previousSurgeries'] as List<dynamic>?)
      ?.map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  chronicDiseases: (json['chronicDiseases'] as List<dynamic>?)
      ?.map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  hospitalizations: (json['hospitalizations'] as List<dynamic>?)
      ?.map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  others: json['others'] as String?,
);

Map<String, dynamic> _$PediatricPersonalHistoryToJson(
  PediatricPersonalHistory instance,
) => <String, dynamic>{
  'prenatalHistory': instance.prenatalHistory,
  'birthHistory': instance.birthHistory,
  'postnatalHistory': instance.postnatalHistory,
  'pediatricDiet': instance.pediatricDiet,
  'vaccinesHistory': instance.vaccinesHistory,
  'psychomotorDevelopment': instance.psychomotorDevelopment,
  'socioeconomicContext': instance.socioeconomicContext,
  'communicableDiseases': instance.communicableDiseases,
  'previousSurgeries': instance.previousSurgeries,
  'chronicDiseases': instance.chronicDiseases,
  'hospitalizations': instance.hospitalizations,
  'others': instance.others,
};
