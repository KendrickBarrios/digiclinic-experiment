import 'package:digiclinic_experiment/models/family_disease_record.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pathological_family_history.g.dart';

@JsonSerializable()
class PathologicalFamilyHistory {

  PathologicalFamilyHistory({
    this.communicableFamilyDiseases,
    this.hereditaryFamilyDiseases
  });

  final List<FamilyDiseaseRecord>? communicableFamilyDiseases;
  final List<FamilyDiseaseRecord>? hereditaryFamilyDiseases;

  factory PathologicalFamilyHistory.fromJson(Map<String, dynamic> json) =>
    _$PathologicalFamilyHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$PathologicalFamilyHistoryToJson(this);
}