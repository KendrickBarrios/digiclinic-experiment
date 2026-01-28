import 'package:json_annotation/json_annotation.dart';

part 'family_disease_record.g.dart';

@JsonSerializable()
class FamilyDiseaseRecord {

  FamilyDiseaseRecord({
    required this.relationship,
    required this.disease,
    required this.additionalInfo
  });

  final String relationship;
  final String disease;
  final String additionalInfo;

  factory FamilyDiseaseRecord.fromJson(Map<String, dynamic> json) =>
    _$FamilyDiseaseRecordFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyDiseaseRecordToJson(this);
}