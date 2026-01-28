import 'package:digiclinic_experiment/models/pathological_family_history.dart';
import 'package:json_annotation/json_annotation.dart';
import 'systems_review.dart';

part 'clinical_note.g.dart';

@JsonSerializable()
class ClinicalNote {
  final int? noteId;
  final int userId;
  final int recordId;
  final int formId;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  final DateTime visitDatetime;
  final String reasonForConsultation;
  final String presentIllnessHistory;
  final SystemsReview systemsReview;
  final PathologicalFamilyHistory? familyHistory;
}