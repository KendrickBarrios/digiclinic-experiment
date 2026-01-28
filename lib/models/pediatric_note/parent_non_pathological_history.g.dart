// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_non_pathological_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentNonPathologicalHistory _$ParentNonPathologicalHistoryFromJson(
  Map<String, dynamic> json,
) => ParentNonPathologicalHistory(
  age: (json['age'] as num).toInt(),
  maritalStatus: $enumDecode(_$MaritalStatusEnumMap, json['maritalStatus']),
  educationLevel: json['educationLevel'] as String,
  job: json['job'] as String,
  religion: json['religion'] as String?,
  caffeine: json['caffeine'] as String,
  tobacco: json['tobacco'] as String,
  alcohol: json['alcohol'] as String,
  illegalDrugs: json['illegalDrugs'] as String,
);

Map<String, dynamic> _$ParentNonPathologicalHistoryToJson(
  ParentNonPathologicalHistory instance,
) => <String, dynamic>{
  'age': instance.age,
  'maritalStatus': _$MaritalStatusEnumMap[instance.maritalStatus]!,
  'educationLevel': instance.educationLevel,
  'job': instance.job,
  'religion': instance.religion,
  'caffeine': instance.caffeine,
  'tobacco': instance.tobacco,
  'alcohol': instance.alcohol,
  'illegalDrugs': instance.illegalDrugs,
};

const _$MaritalStatusEnumMap = {
  MaritalStatus.SOLTERO: 'SOLTERO',
  MaritalStatus.CASADO: 'CASADO',
  MaritalStatus.UNIONHECHOESTABLE: 'UNIONHECHOESTABLE',
  MaritalStatus.DIVORCIADO: 'DIVORCIADO',
  MaritalStatus.VIUDO: 'VIUDO',
};
