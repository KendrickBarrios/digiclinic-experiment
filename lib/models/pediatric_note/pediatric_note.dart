import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';
import 'package:digiclinic_experiment/models/record_document.dart';
import 'package:digiclinic_experiment/models/note_asset/pathological_family_history.dart';
import 'package:digiclinic_experiment/models/note_asset/physical_exam.dart';
import 'package:digiclinic_experiment/models/note_asset/systems_review.dart';
import 'package:digiclinic_experiment/models/pediatric_note/non_pathological_family_history.dart';
import 'package:digiclinic_experiment/models/pediatric_note/pediatric_personal_history.dart';

part 'pediatric_note.g.dart';

@JsonSerializable()
class PediatricNote implements RecordDocument {

  PediatricNote({
    this.noteId,
    required this.userId,
    required this.recordId,
    required this.formId,
    this.createdAt,
    this.lastUpdated,
    required this.visitDateTime,
    required this.infoSource,
    required this.sourceRelationship,
    required this.trustLevel,
    required this.reasonForConsultation,
    required this.presentIllnessHistory,
    required this.systemsReview,
    required this.nonPathologicalFamilyHistory,
    this.pathologicalFamilyHistory,
    required this.pediatricPersonalHistory,
    required this.physicalExam,
    this.observations,
    this.problemsList,
    required this.isActive
  });

  final int? noteId;
  final int userId;
  final int recordId;
  final int formId;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeToJson: false)
  final DateTime? lastUpdated;
  final DateTime visitDateTime;
  final String infoSource;
  final String sourceRelationship;
  final String trustLevel;
  final String reasonForConsultation;
  final String presentIllnessHistory;
  final SystemsReview systemsReview;
  final NonPathologicalFamilyHistory nonPathologicalFamilyHistory;
  final PathologicalFamilyHistory? pathologicalFamilyHistory;
  final PediatricPersonalHistory pediatricPersonalHistory;
  final PhysicalExam physicalExam;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? observations;
  @JsonKey(
    fromJson: stringListFromJson,
    toJson: stringListToJson
  )
  final List<String>? problemsList;
  final bool isActive;

  factory PediatricNote.fromJson(Map<String, dynamic> json) =>
    _$PediatricNoteFromJson(json);

  Map<String, dynamic> toJson() => _$PediatricNoteToJson(this);
}