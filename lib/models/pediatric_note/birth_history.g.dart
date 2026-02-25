// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthHistory _$BirthHistoryFromJson(Map<String, dynamic> json) => BirthHistory(
  birthDatetime: nullableStringFromJson(json['birthDatetime']),
  laborDuration: json['laborDuration'] as String,
  gestationalAge: json['gestationalAge'] as String,
  laborResponsible: json['laborResponsible'] as String,
  deliveryMethod: json['deliveryMethod'] as String,
  fetalPresentation: json['fetalPresentation'] as String,
  laborComplications: json['laborComplications'] as String,
);

Map<String, dynamic> _$BirthHistoryToJson(BirthHistory instance) =>
    <String, dynamic>{
      'birthDatetime': instance.birthDatetime,
      'laborDuration': instance.laborDuration,
      'gestationalAge': instance.gestationalAge,
      'laborResponsible': instance.laborResponsible,
      'deliveryMethod': instance.deliveryMethod,
      'fetalPresentation': instance.fetalPresentation,
      'laborComplications': instance.laborComplications,
    };
