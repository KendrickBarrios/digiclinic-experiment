// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_pathological_family_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonPathologicalFamilyHistory _$NonPathologicalFamilyHistoryFromJson(
  Map<String, dynamic> json,
) => NonPathologicalFamilyHistory(
  motherNonPathologicalHistory: json['motherNonPathologicalHistory'] == null
      ? null
      : ParentNonPathologicalHistory.fromJson(
          json['motherNonPathologicalHistory'] as Map<String, dynamic>,
        ),
  fatherNonPathologicalHistory: json['fatherNonPathologicalHistory'] == null
      ? null
      : ParentNonPathologicalHistory.fromJson(
          json['fatherNonPathologicalHistory'] as Map<String, dynamic>,
        ),
  siblingHistory: json['siblingHistory'] == null
      ? null
      : SiblingHistory.fromJson(json['siblingHistory'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NonPathologicalFamilyHistoryToJson(
  NonPathologicalFamilyHistory instance,
) => <String, dynamic>{
  'motherNonPathologicalHistory': instance.motherNonPathologicalHistory,
  'fatherNonPathologicalHistory': instance.fatherNonPathologicalHistory,
  'siblingHistory': instance.siblingHistory,
};
