// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psychomotor_development.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PsychomotorDevelopment _$PsychomotorDevelopmentFromJson(
  Map<String, dynamic> json,
) => PsychomotorDevelopment(
  fixedLook: json['fixedLook'] as bool,
  fixedLookAge: (json['fixedLookAge'] as num?)?.toInt(),
  heldUpHead: json['heldUpHead'] as bool,
  heldUpHeadAge: (json['heldUpHeadAge'] as num?)?.toInt(),
  smiled: json['smiled'] as bool,
  smiledAge: (json['smiledAge'] as num?)?.toInt(),
  sat: json['sat'] as bool,
  satAge: (json['satAge'] as num?)?.toInt(),
  crawled: json['crawled'] as bool,
  crawledAge: (json['crawledAge'] as num?)?.toInt(),
  walked: json['walked'] as bool,
  walkedAge: (json['walkedAge'] as num?)?.toInt(),
  proyectedItself: json['proyectedItself'] as bool,
  proyectedItselfAge: (json['proyectedItselfAge'] as num?)?.toInt(),
);

Map<String, dynamic> _$PsychomotorDevelopmentToJson(
  PsychomotorDevelopment instance,
) => <String, dynamic>{
  'fixedLook': instance.fixedLook,
  'fixedLookAge': instance.fixedLookAge,
  'heldUpHead': instance.heldUpHead,
  'heldUpHeadAge': instance.heldUpHeadAge,
  'smiled': instance.smiled,
  'smiledAge': instance.smiledAge,
  'sat': instance.sat,
  'satAge': instance.satAge,
  'crawled': instance.crawled,
  'crawledAge': instance.crawledAge,
  'walked': instance.walked,
  'walkedAge': instance.walkedAge,
  'proyectedItself': instance.proyectedItself,
  'proyectedItselfAge': instance.proyectedItselfAge,
};
