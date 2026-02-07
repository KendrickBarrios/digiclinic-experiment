import 'package:json_annotation/json_annotation.dart';

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
  @JsonKey(fromJson: _nullableStringFromJson)
  final String? recordCode;
  final String fullName;
  final DateTime lastVisitDate;
  @JsonKey(
    fromJson: _datesFromJson,
    toJson: _datesToJson
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

List<DateTime> _datesFromJson(List<dynamic> json) =>
  json.map((e) => DateTime.parse(e as String)).toList();

List<String> _datesToJson(List<DateTime> dates) =>
  dates.map((e) => e.toIso8601String()).toList();

String? _nullableStringFromJson(dynamic value) {
  if (value == null) return null;
  return value as String;
}