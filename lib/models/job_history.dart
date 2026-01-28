import 'package:digiclinic_experiment/models/current_work_history.dart';
import 'package:digiclinic_experiment/models/previous_job.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_history.g.dart';

@JsonSerializable()
class JobHistory {

  JobHistory({
    this.currentWorkHistory,
    this.previousJobs
  });

  final CurrentWorkHistory? currentWorkHistory;
  final List<PreviousJob>? previousJobs;

  factory JobHistory.fromJson(Map<String, dynamic> json) =>
    _$JobHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$JobHistoryToJson(this);
}