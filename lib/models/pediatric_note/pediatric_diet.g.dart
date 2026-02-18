// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pediatric_diet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediatricDiet _$PediatricDietFromJson(Map<String, dynamic> json) =>
    PediatricDiet(
      exclusiveBreastfeeding: json['exclusiveBreastfeeding'] as bool,
      mixedBreastFeeding: json['mixedBreastFeeding'] as bool,
      exclusiveBreastfeedingDuration:
          json['exclusiveBreastfeedingDuration'] as String,
      mixedBreastFeedingDuration: nullableStringFromJson(
        json['mixedBreastFeedingDuration'],
      ),
      weaning: nullableStringFromJson(json['weaning']),
    );

Map<String, dynamic> _$PediatricDietToJson(PediatricDiet instance) =>
    <String, dynamic>{
      'exclusiveBreastfeeding': instance.exclusiveBreastfeeding,
      'mixedBreastFeeding': instance.mixedBreastFeeding,
      'exclusiveBreastfeedingDuration': instance.exclusiveBreastfeedingDuration,
      'mixedBreastFeedingDuration': instance.mixedBreastFeedingDuration,
      'weaning': instance.weaning,
    };
