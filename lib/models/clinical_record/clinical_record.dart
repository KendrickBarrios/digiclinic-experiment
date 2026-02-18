import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';
part 'clinical_record.g.dart';

@JsonSerializable()
class ClinicalRecord {

  ClinicalRecord({
    this.recordId,
    required this.userId,
    this.recordCode,
    required this.fullName,
    required this.lastVisitDate,
    required this.nextAppointments,
    this.createdAt,
    this.lastUpdated,
    required this.isActive
  });

  final int? recordId;
  final int userId;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? recordCode;
  final String fullName;
  final DateTime lastVisitDate;
  @JsonKey(
    fromJson: datesFromJson,
    toJson: datesToJson
  )
  final List<DateTime> nextAppointments;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  @JsonKey(includeToJson: false)
  final DateTime? lastUpdated;
  final bool isActive;

  factory ClinicalRecord.fromJson(Map<String, dynamic> json) =>
    _$ClinicalRecordFromJson(json);
  
  Map<String, dynamic> toJson() => _$ClinicalRecordToJson(this);
}
