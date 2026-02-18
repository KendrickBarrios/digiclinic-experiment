// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postnatal_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostnatalHistory _$PostnatalHistoryFromJson(Map<String, dynamic> json) =>
    PostnatalHistory(
      firstApgar: (json['firstApgar'] as num).toInt(),
      secondApgar: (json['secondApgar'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      asphyxiaSigns: json['asphyxiaSigns'] as bool,
      asphyxiaInfo: nullableStringFromJson(json['asphyxiaInfo']),
      zeroSeparation: json['zeroSeparation'] as bool,
      permanentlyWithTheirMother: json['permanentlyWithTheirMother'] as bool,
      hoursWithTheirMother: (json['hoursWithTheirMother'] as num).toInt(),
      hospitalizationInfo: json['hospitalizationInfo'] as String,
    );

Map<String, dynamic> _$PostnatalHistoryToJson(PostnatalHistory instance) =>
    <String, dynamic>{
      'firstApgar': instance.firstApgar,
      'secondApgar': instance.secondApgar,
      'weight': instance.weight,
      'height': instance.height,
      'asphyxiaSigns': instance.asphyxiaSigns,
      'asphyxiaInfo': instance.asphyxiaInfo,
      'zeroSeparation': instance.zeroSeparation,
      'permanentlyWithTheirMother': instance.permanentlyWithTheirMother,
      'hoursWithTheirMother': instance.hoursWithTheirMother,
      'hospitalizationInfo': instance.hospitalizationInfo,
    };
