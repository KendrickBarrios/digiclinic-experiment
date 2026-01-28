// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adult_personal_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdultPersonalHistory _$AdultPersonalHistoryFromJson(
  Map<String, dynamic> json,
) => AdultPersonalHistory(
  nonPathologicalHistory: NonPathologicalHistory.fromJson(
    json['nonPathologicalHistory'] as Map<String, dynamic>,
  ),
  communicableDiseases: (json['communicableDiseases'] as List<dynamic>)
      .map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  previousSurgeries: (json['previousSurgeries'] as List<dynamic>)
      .map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  chronicDiseases: (json['chronicDiseases'] as List<dynamic>)
      .map(
        (e) => PersonalPathologicalRecord.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$AdultPersonalHistoryToJson(
  AdultPersonalHistory instance,
) => <String, dynamic>{
  'nonPathologicalHistory': instance.nonPathologicalHistory,
  'communicableDiseases': instance.communicableDiseases,
  'previousSurgeries': instance.previousSurgeries,
  'chronicDiseases': instance.chronicDiseases,
};
