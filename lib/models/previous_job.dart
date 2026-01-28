import 'package:json_annotation/json_annotation.dart';

part 'previous_job.g.dart';

@JsonSerializable()
class PreviousJob {

  PreviousJob({
    required this.startingDate,
    required this.endDate,
    required this.years,
    required this.jobInfo
  });

  final String startingDate;
  final String endDate;
  final int years;
  final String jobInfo;

  factory PreviousJob.fromJson(Map<String, dynamic> json) =>
    _$PreviousJobFromJson(json);

  Map<String, dynamic> toJson() => _$PreviousJobToJson(this);
}