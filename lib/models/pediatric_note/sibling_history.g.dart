// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sibling_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SiblingHistory _$SiblingHistoryFromJson(Map<String, dynamic> json) =>
    SiblingHistory(
      hasSiblings: json['hasSiblings'] as bool,
      livingSiblings: (json['livingSiblings'] as num).toInt(),
      deceasedSiblings: (json['deceasedSiblings'] as num).toInt(),
      deceaseAge: json['deceaseAge'] as String,
      deceaseCause: json['deceaseCause'] as String,
    );

Map<String, dynamic> _$SiblingHistoryToJson(SiblingHistory instance) =>
    <String, dynamic>{
      'hasSiblings': instance.hasSiblings,
      'livingSiblings': instance.livingSiblings,
      'deceasedSiblings': instance.deceasedSiblings,
      'deceaseAge': instance.deceaseAge,
      'deceaseCause': instance.deceaseCause,
    };
