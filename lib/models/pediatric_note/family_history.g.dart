// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyHistory _$FamilyHistoryFromJson(Map<String, dynamic> json) =>
    FamilyHistory(
      nonPathologicalFamilyHistory: NonPathologicalFamilyHistory.fromJson(
        json['nonPathologicalFamilyHistory'] as Map<String, dynamic>,
      ),
      pathologicalFamilyHistory: json['pathologicalFamilyHistory'] == null
          ? null
          : PathologicalFamilyHistory.fromJson(
              json['pathologicalFamilyHistory'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$FamilyHistoryToJson(FamilyHistory instance) =>
    <String, dynamic>{
      'nonPathologicalFamilyHistory': instance.nonPathologicalFamilyHistory,
      'pathologicalFamilyHistory': instance.pathologicalFamilyHistory,
    };
