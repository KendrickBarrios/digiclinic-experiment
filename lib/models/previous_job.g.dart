// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviousJob _$PreviousJobFromJson(Map<String, dynamic> json) => PreviousJob(
  startingDate: json['startingDate'] as String,
  endDate: json['endDate'] as String,
  years: (json['years'] as num).toInt(),
  jobInfo: json['jobInfo'] as String,
);

Map<String, dynamic> _$PreviousJobToJson(PreviousJob instance) =>
    <String, dynamic>{
      'startingDate': instance.startingDate,
      'endDate': instance.endDate,
      'years': instance.years,
      'jobInfo': instance.jobInfo,
    };
