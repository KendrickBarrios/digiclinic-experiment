// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VaccineRecord _$VaccineRecordFromJson(Map<String, dynamic> json) =>
    VaccineRecord(
      vaccine: json['vaccine'] as String,
      firstDose: json['firstDose'] == null
          ? null
          : DateTime.parse(json['firstDose'] as String),
      secondDose: json['secondDose'] == null
          ? null
          : DateTime.parse(json['secondDose'] as String),
      thirdDose: json['thirdDose'] == null
          ? null
          : DateTime.parse(json['thirdDose'] as String),
      firstReinforcement: json['firstReinforcement'] == null
          ? null
          : DateTime.parse(json['firstReinforcement'] as String),
      secondReinforcement: json['secondReinforcement'] == null
          ? null
          : DateTime.parse(json['secondReinforcement'] as String),
      thirdReinforcement: json['thirdReinforcement'] == null
          ? null
          : DateTime.parse(json['thirdReinforcement'] as String),
      fourthReinforcement: json['fourthReinforcement'] == null
          ? null
          : DateTime.parse(json['fourthReinforcement'] as String),
    );

Map<String, dynamic> _$VaccineRecordToJson(VaccineRecord instance) =>
    <String, dynamic>{
      'vaccine': instance.vaccine,
      'firstDose': instance.firstDose?.toIso8601String(),
      'secondDose': instance.secondDose?.toIso8601String(),
      'thirdDose': instance.thirdDose?.toIso8601String(),
      'firstReinforcement': instance.firstReinforcement?.toIso8601String(),
      'secondReinforcement': instance.secondReinforcement?.toIso8601String(),
      'thirdReinforcement': instance.thirdReinforcement?.toIso8601String(),
      'fourthReinforcement': instance.fourthReinforcement?.toIso8601String(),
    };
