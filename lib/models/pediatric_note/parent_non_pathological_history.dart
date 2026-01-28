import 'package:digiclinic_experiment/models/note_asset/marital_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parent_non_pathological_history.g.dart';

@JsonSerializable()
class ParentNonPathologicalHistory {
  
  ParentNonPathologicalHistory({
    required this.age,
    required this.maritalStatus,
    required this.educationLevel,
    required this.job,
    this.religion,
    required this.caffeine,
    required this.tobacco,
    required this.alcohol,
    required this.illegalDrugs
  });

  final int age;
  final MaritalStatus maritalStatus;
  final String educationLevel;
  final String job;
  final String? religion;
  final String caffeine;
  final String tobacco;
  final String alcohol;
  final String illegalDrugs;

  factory ParentNonPathologicalHistory.fromJson(Map<String, dynamic> json) =>
    _$ParentNonPathologicalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$ParentNonPathologicalHistoryToJson(this);
}