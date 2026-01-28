// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_pathological_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalPathologicalRecord _$PersonalPathologicalRecordFromJson(
  Map<String, dynamic> json,
) => PersonalPathologicalRecord(
  subject: json['subject'] as String,
  additionalInfo: json['additionalInfo'] as String,
);

Map<String, dynamic> _$PersonalPathologicalRecordToJson(
  PersonalPathologicalRecord instance,
) => <String, dynamic>{
  'subject': instance.subject,
  'additionalInfo': instance.additionalInfo,
};
