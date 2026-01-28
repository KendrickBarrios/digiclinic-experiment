// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_work_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWorkHistory _$CurrentWorkHistoryFromJson(Map<String, dynamic> json) =>
    CurrentWorkHistory(
      currentlyWorking: json['currentlyWorking'] as bool,
      workPlace: json['workPlace'] as String,
      workArea: json['workArea'] as String,
      activities: json['activities'] as String,
      yearsWorking: (json['yearsWorking'] as num).toInt(),
      dailyWorkHours: (json['dailyWorkHours'] as num).toInt(),
      weeklyWorkHours: (json['weeklyWorkHours'] as num).toInt(),
      workShift: json['workShift'] as String,
      workDescription: json['workDescription'] as String,
      substanceExposition: json['substanceExposition'] as bool,
      substanceExpositionInfo: json['substanceExpositionInfo'] as String?,
      frequencyIntensity: json['frequencyIntensity'] as String,
      bodyPosition: json['bodyPosition'] as String,
      otherJobs: json['otherJobs'] as String?,
    );

Map<String, dynamic> _$CurrentWorkHistoryToJson(CurrentWorkHistory instance) =>
    <String, dynamic>{
      'currentlyWorking': instance.currentlyWorking,
      'workPlace': instance.workPlace,
      'workArea': instance.workArea,
      'activities': instance.activities,
      'yearsWorking': instance.yearsWorking,
      'dailyWorkHours': instance.dailyWorkHours,
      'weeklyWorkHours': instance.weeklyWorkHours,
      'workShift': instance.workShift,
      'workDescription': instance.workDescription,
      'substanceExposition': instance.substanceExposition,
      'substanceExpositionInfo': instance.substanceExpositionInfo,
      'frequencyIntensity': instance.frequencyIntensity,
      'bodyPosition': instance.bodyPosition,
      'otherJobs': instance.otherJobs,
    };
