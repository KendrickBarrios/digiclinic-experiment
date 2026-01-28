import 'non_pathological_history.dart';
import 'personal_pathological_record.dart';
import 'package:json_annotation/json_annotation.dart';

part 'adult_personal_history.g.dart';

@JsonSerializable()
class AdultPersonalHistory {

  AdultPersonalHistory({
    required this.nonPathologicalHistory,
    required this.communicableDiseases,
    required this.previousSurgeries,
    required this.chronicDiseases
  });

  final NonPathologicalHistory nonPathologicalHistory;
  final List<PersonalPathologicalRecord> communicableDiseases;
  final List<PersonalPathologicalRecord> previousSurgeries;
  final List<PersonalPathologicalRecord> chronicDiseases;

  factory AdultPersonalHistory.fromJson(Map<String, dynamic> json) =>
    _$AdultPersonalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$AdultPersonalHistoryToJson(this);
}