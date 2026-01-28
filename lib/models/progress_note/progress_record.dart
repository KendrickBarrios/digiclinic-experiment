import 'package:json_annotation/json_annotation.dart';

part 'progress_record.g.dart';

@JsonSerializable()
class ProgressRecord {

  ProgressRecord({
    required this.datetime,
    required this.problemAndEvolution,
    required this.plans
  });

  final DateTime datetime;
  final String problemAndEvolution;
  final String plans;

  factory ProgressRecord.fromJson(Map<String, dynamic> json) =>
    _$ProgressRecordFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressRecordToJson(this);
}