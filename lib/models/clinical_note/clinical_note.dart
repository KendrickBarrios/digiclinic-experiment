import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';
import 'adult_personal_history.dart';
import 'job_history.dart';
import 'obstetric_gynecological_history.dart';
import '../note_asset/pathological_family_history.dart';
import '../note_asset/physical_exam.dart';
import '../note_asset/systems_review.dart';

part 'clinical_note.g.dart';

@JsonSerializable()
class ClinicalNote {

  ClinicalNote({
    this.noteId,
    required this.userId,
    required this.recordId,
    required this.formId,
    this.createdAt,
    this.lastUpdated,
    required this.visitDatetime,
    required this.reasonForConsultation,
    required this.presentIllnessHistory,
    required this.systemsReview,
    this.familyHistory,
    required this.personalHistory,
    this.obstetricGynecologicalHistory,
    this.jobHistory,
    required this.physicalExam,
    this.observations,
    required this.problemsList,
    required this.isActive
  });

  final int? noteId;
  final int userId;
  final int recordId;
  final int formId;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  @JsonKey(includeToJson: false)
  final DateTime? lastUpdated;
  final DateTime visitDatetime;
  final String reasonForConsultation;
  final String presentIllnessHistory;
  final SystemsReview systemsReview;
  final PathologicalFamilyHistory? familyHistory;
  final AdultPersonalHistory personalHistory;
  final ObstetricGynecologicalHistory? obstetricGynecologicalHistory;
  final JobHistory? jobHistory;
  final PhysicalExam physicalExam;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? observations;
  final List<String> problemsList;
  final bool isActive;

  factory ClinicalNote.fromJson(Map<String, dynamic> json) =>
    _$ClinicalNoteFromJson(json);

  Map<String, dynamic> toJson() => _$ClinicalNoteToJson(this);
}