import 'package:json_annotation/json_annotation.dart';

part 'personal_pathological_record.g.dart';

@JsonSerializable()
class PersonalPathologicalRecord {

  PersonalPathologicalRecord({
    required this.subject,
    required this.additionalInfo
  });

  final String subject;
  final String additionalInfo;

  factory PersonalPathologicalRecord.fromJson(Map<String, dynamic> json) =>
    _$PersonalPathologicalRecordFromJson(json);
  
  Map<String, dynamic> toJson() => _$PersonalPathologicalRecordToJson(this);
}