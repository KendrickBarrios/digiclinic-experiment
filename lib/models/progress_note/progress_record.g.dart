// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressRecord _$ProgressRecordFromJson(Map<String, dynamic> json) =>
    ProgressRecord(
      datetime: DateTime.parse(json['datetime'] as String),
      problemAndEvolution: json['problemAndEvolution'] as String,
      plans: json['plans'] as String,
    );

Map<String, dynamic> _$ProgressRecordToJson(ProgressRecord instance) =>
    <String, dynamic>{
      'datetime': instance.datetime.toIso8601String(),
      'problemAndEvolution': instance.problemAndEvolution,
      'plans': instance.plans,
    };
