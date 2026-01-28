// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pediatric_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediatricNote _$PediatricNoteFromJson(Map<String, dynamic> json) =>
    PediatricNote(
      noteId: (json['noteId'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      recordId: (json['recordId'] as num).toInt(),
      formId: (json['formId'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      visitDateTime: DateTime.parse(json['visitDateTime'] as String),
      infoSource: json['infoSource'] as String,
      sourceRelationship: json['sourceRelationship'] as String,
      trustLevel: json['trustLevel'] as String,
      reasonForConsultation: json['reasonForConsultation'] as String,
      presentIllnessHistory: json['presentIllnessHistory'] as String,
      systemsReview: SystemsReview.fromJson(
        json['systemsReview'] as Map<String, dynamic>,
      ),
      nonPathologicalFamilyHistory: NonPathologicalFamilyHistory.fromJson(
        json['nonPathologicalFamilyHistory'] as Map<String, dynamic>,
      ),
      pathologicalFamilyHistory: json['pathologicalFamilyHistory'] == null
          ? null
          : PathologicalFamilyHistory.fromJson(
              json['pathologicalFamilyHistory'] as Map<String, dynamic>,
            ),
      pediatricPersonalHistory: PediatricPersonalHistory.fromJson(
        json['pediatricPersonalHistory'] as Map<String, dynamic>,
      ),
      physicalExam: PhysicalExam.fromJson(
        json['physicalExam'] as Map<String, dynamic>,
      ),
      observations: json['observations'] as String?,
      problemsList: (json['problemsList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$PediatricNoteToJson(PediatricNote instance) =>
    <String, dynamic>{
      'noteId': instance.noteId,
      'userId': instance.userId,
      'recordId': instance.recordId,
      'formId': instance.formId,
      'visitDateTime': instance.visitDateTime.toIso8601String(),
      'infoSource': instance.infoSource,
      'sourceRelationship': instance.sourceRelationship,
      'trustLevel': instance.trustLevel,
      'reasonForConsultation': instance.reasonForConsultation,
      'presentIllnessHistory': instance.presentIllnessHistory,
      'systemsReview': instance.systemsReview,
      'nonPathologicalFamilyHistory': instance.nonPathologicalFamilyHistory,
      'pathologicalFamilyHistory': instance.pathologicalFamilyHistory,
      'pediatricPersonalHistory': instance.pediatricPersonalHistory,
      'physicalExam': instance.physicalExam,
      'observations': instance.observations,
      'problemsList': instance.problemsList,
      'isActive': instance.isActive,
    };
