import 'package:digiclinic_experiment/models/note_asset/pathological_family_history.dart';
import 'package:digiclinic_experiment/models/pediatric_note/non_pathological_family_history.dart';
import 'package:json_annotation/json_annotation.dart';

part 'family_history.g.dart';

@JsonSerializable()
class FamilyHistory {

  FamilyHistory({
    required this.nonPathologicalFamilyHistory,
    this.pathologicalFamilyHistory
  });

  final NonPathologicalFamilyHistory nonPathologicalFamilyHistory;
  final PathologicalFamilyHistory? pathologicalFamilyHistory;

  factory FamilyHistory.fromJson(Map<String, dynamic> json) =>
    _$FamilyHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyHistoryToJson(this);
}