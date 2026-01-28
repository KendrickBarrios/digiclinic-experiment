// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pathological_family_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PathologicalFamilyHistory _$PathologicalFamilyHistoryFromJson(
  Map<String, dynamic> json,
) => PathologicalFamilyHistory(
  communicableFamilyDiseases:
      (json['communicableFamilyDiseases'] as List<dynamic>?)
          ?.map((e) => FamilyDiseaseRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
  hereditaryFamilyDiseases: (json['hereditaryFamilyDiseases'] as List<dynamic>?)
      ?.map((e) => FamilyDiseaseRecord.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PathologicalFamilyHistoryToJson(
  PathologicalFamilyHistory instance,
) => <String, dynamic>{
  'communicableFamilyDiseases': instance.communicableFamilyDiseases,
  'hereditaryFamilyDiseases': instance.hereditaryFamilyDiseases,
};
