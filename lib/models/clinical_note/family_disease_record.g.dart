// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_disease_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyDiseaseRecord _$FamilyDiseaseRecordFromJson(Map<String, dynamic> json) =>
    FamilyDiseaseRecord(
      relationship: json['relationship'] as String,
      disease: json['disease'] as String,
      additionalInfo: json['additionalInfo'] as String,
    );

Map<String, dynamic> _$FamilyDiseaseRecordToJson(
  FamilyDiseaseRecord instance,
) => <String, dynamic>{
  'relationship': instance.relationship,
  'disease': instance.disease,
  'additionalInfo': instance.additionalInfo,
};
