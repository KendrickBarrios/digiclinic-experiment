import 'package:json_annotation/json_annotation.dart';

part 'current_work_history.g.dart';

@JsonSerializable()
class CurrentWorkHistory {

  CurrentWorkHistory({
    required this.currentlyWorking,
    required this.workPlace,
    required this.workArea,
    required this.activities,
    required this.yearsWorking,
    required this.dailyWorkHours,
    required this.weeklyWorkHours,
    required this.workShift,
    required this.workDescription,
    required this.substanceExposition,
    this.substanceExpositionInfo,
    required this.frequencyIntensity,
    required this.bodyPosition,
    this.otherJobs
  });

  final bool currentlyWorking;
  final String workPlace;
  final String workArea;
  final String activities;
  final int yearsWorking;
  final int dailyWorkHours;
  final int weeklyWorkHours;
  final String workShift;
  final String workDescription;
  final bool substanceExposition;
  final String? substanceExpositionInfo;
  final String frequencyIntensity;
  final String bodyPosition;
  final String? otherJobs;

  factory CurrentWorkHistory.fromJson(Map<String, dynamic> json) =>
    _$CurrentWorkHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWorkHistoryToJson(this);
}