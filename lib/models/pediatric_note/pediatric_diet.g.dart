// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pediatric_diet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediatricDiet _$PediatricDietFromJson(Map<String, dynamic> json) =>
    PediatricDiet(
      exclusiveBreastfeeding: json['exclusiveBreastfeeding'] as bool,
      mixedBreastfeeding: json['mixedBreastfeeding'] as bool,
      exclusiveBreastfeedingDuration: nullableStringFromJson(
        json['exclusiveBreastfeedingDuration'],
      ),
      mixedBreastFeedingDuration: nullableStringFromJson(
        json['mixedBreastFeedingDuration'],
      ),
      weaning: nullableStringFromJson(json['weaning']),
    );

Map<String, dynamic> _$PediatricDietToJson(PediatricDiet instance) =>
    <String, dynamic>{
      'exclusiveBreastfeeding': instance.exclusiveBreastfeeding,
      'mixedBreastfeeding': instance.mixedBreastfeeding,
      'exclusiveBreastfeedingDuration': instance.exclusiveBreastfeedingDuration,
      'mixedBreastFeedingDuration': instance.mixedBreastFeedingDuration,
      'weaning': instance.weaning,
    };
