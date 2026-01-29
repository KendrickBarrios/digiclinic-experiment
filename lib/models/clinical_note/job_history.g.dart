// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobHistory _$JobHistoryFromJson(Map<String, dynamic> json) => JobHistory(
  currentWorkHistory: json['currentWorkHistory'] == null
      ? null
      : CurrentWorkHistory.fromJson(
          json['currentWorkHistory'] as Map<String, dynamic>,
        ),
  previousJobs: (json['previousJobs'] as List<dynamic>?)
      ?.map((e) => PreviousJob.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$JobHistoryToJson(JobHistory instance) =>
    <String, dynamic>{
      'currentWorkHistory': instance.currentWorkHistory,
      'previousJobs': instance.previousJobs,
    };
