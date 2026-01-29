// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinical_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicalNote _$ClinicalNoteFromJson(Map<String, dynamic> json) => ClinicalNote(
  noteId: (json['noteId'] as num?)?.toInt(),
  userId: (json['userId'] as num).toInt(),
  recordId: (json['recordId'] as num).toInt(),
  formId: (json['formId'] as num).toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  visitDatetime: DateTime.parse(json['visitDatetime'] as String),
  reasonForConsultation: json['reasonForConsultation'] as String,
  presentIllnessHistory: json['presentIllnessHistory'] as String,
  systemsReview: SystemsReview.fromJson(
    json['systemsReview'] as Map<String, dynamic>,
  ),
  familyHistory: json['familyHistory'] == null
      ? null
      : PathologicalFamilyHistory.fromJson(
          json['familyHistory'] as Map<String, dynamic>,
        ),
  personalHistory: AdultPersonalHistory.fromJson(
    json['personalHistory'] as Map<String, dynamic>,
  ),
  obstetricGynecologicalHistory: json['obstetricGynecologicalHistory'] == null
      ? null
      : ObstetricGynecologicalHistory.fromJson(
          json['obstetricGynecologicalHistory'] as Map<String, dynamic>,
        ),
  jobHistory: json['jobHistory'] == null
      ? null
      : JobHistory.fromJson(json['jobHistory'] as Map<String, dynamic>),
  physicalExam: PhysicalExam.fromJson(
    json['physicalExam'] as Map<String, dynamic>,
  ),
  observations: json['observations'] as String?,
  problemsList: (json['problemsList'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$ClinicalNoteToJson(ClinicalNote instance) =>
    <String, dynamic>{
      'noteId': instance.noteId,
      'userId': instance.userId,
      'recordId': instance.recordId,
      'formId': instance.formId,
      'visitDatetime': instance.visitDatetime.toIso8601String(),
      'reasonForConsultation': instance.reasonForConsultation,
      'presentIllnessHistory': instance.presentIllnessHistory,
      'systemsReview': instance.systemsReview,
      'familyHistory': instance.familyHistory,
      'personalHistory': instance.personalHistory,
      'obstetricGynecologicalHistory': instance.obstetricGynecologicalHistory,
      'jobHistory': instance.jobHistory,
      'physicalExam': instance.physicalExam,
      'observations': instance.observations,
      'problemsList': instance.problemsList,
      'isActive': instance.isActive,
    };
