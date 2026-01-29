import 'package:digiclinic_experiment/models/pediatric_note/parent_non_pathological_history.dart';
import 'package:digiclinic_experiment/models/pediatric_note/sibling_history.dart';
import 'package:json_annotation/json_annotation.dart';

part 'non_pathological_family_history.g.dart';

@JsonSerializable()
class NonPathologicalFamilyHistory {

  NonPathologicalFamilyHistory({
    this.motherNonPathologicalHistory,
    this.fatherNonPathologicalHistory,
    this.siblingHistory
  });

  final ParentNonPathologicalHistory? motherNonPathologicalHistory;
  final ParentNonPathologicalHistory? fatherNonPathologicalHistory;
  final SiblingHistory? siblingHistory; 

  factory NonPathologicalFamilyHistory.fromJson(Map<String, dynamic> json) =>
    _$NonPathologicalFamilyHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$NonPathologicalFamilyHistoryToJson(this);
}