import 'package:json_annotation/json_annotation.dart';

part 'clinical_record.g.dart';

@JsonSerializable()
class ClinicalRecord {

  ClinicalRecord({
    this.recordId,
    required this.userId,
    required this.recordCode,
    required this.fullName,
    required this.lastVisitDate,
    required this.nextAppointments,
    this.createdAt,
  });

  final int? recordId;
  final int userId;
  final String recordCode;
  final String fullName;
  final DateTime lastVisitDate;
  final List<DateTime> nextAppointments;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;

  factory ClinicalRecord.fromJson(Map<String, dynamic> json) =>
    _$ClinicalRecordFromJson(json);
  
  Map<String, dynamic> toJson() => _$ClinicalRecordToJson(this);
}