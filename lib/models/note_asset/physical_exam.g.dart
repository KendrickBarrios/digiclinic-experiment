// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhysicalExam _$PhysicalExamFromJson(Map<String, dynamic> json) => PhysicalExam(
  pulse: (json['pulse'] as num).toInt(),
  respiration: (json['respiration'] as num).toInt(),
  bloodPressure: json['bloodPressure'] as String,
  temperature: (json['temperature'] as num).toDouble(),
  weight: (json['weight'] as num).toDouble(),
  bmi: (json['bmi'] as num).toDouble(),
  bsa: (json['bsa'] as num).toDouble(),
  abdominalPerimeter: (json['abdominalPerimeter'] as num?)?.toDouble(),
  generalAspect: json['generalAspect'] as String,
  skinAndMucosae: json['skinAndMucosae'] as String,
  skull: json['skull'] as String,
  scalp: json['scalp'] as String,
  eyes: json['eyes'] as String,
  ears: json['ears'] as String,
  nose: json['nose'] as String,
  mouth: json['mouth'] as String,
  neck: json['neck'] as String,
  thoracicCavity: json['thoracicCavity'] as String,
  breast: json['breast'] as String,
  lungFields: json['lungFields'] as String,
  cardiac: json['cardiac'] as String,
  abdomenAndPelvis: json['abdomenAndPelvis'] as String,
  rectalExam: nullableStringFromJson(json['rectalExam']),
  upperLimbs: json['upperLimbs'] as String,
  lowerLimbs: json['lowerLimbs'] as String,
  urogenital: nullableStringFromJson(json['urogenital']),
  gynecological: nullableStringFromJson(json['gynecological']),
  neurological: json['neurological'] as String,
);

Map<String, dynamic> _$PhysicalExamToJson(PhysicalExam instance) =>
    <String, dynamic>{
      'pulse': instance.pulse,
      'respiration': instance.respiration,
      'bloodPressure': instance.bloodPressure,
      'temperature': instance.temperature,
      'weight': instance.weight,
      'bmi': instance.bmi,
      'bsa': instance.bsa,
      'abdominalPerimeter': instance.abdominalPerimeter,
      'generalAspect': instance.generalAspect,
      'skinAndMucosae': instance.skinAndMucosae,
      'skull': instance.skull,
      'scalp': instance.scalp,
      'eyes': instance.eyes,
      'ears': instance.ears,
      'nose': instance.nose,
      'mouth': instance.mouth,
      'neck': instance.neck,
      'thoracicCavity': instance.thoracicCavity,
      'breast': instance.breast,
      'lungFields': instance.lungFields,
      'cardiac': instance.cardiac,
      'abdomenAndPelvis': instance.abdomenAndPelvis,
      'rectalExam': instance.rectalExam,
      'upperLimbs': instance.upperLimbs,
      'lowerLimbs': instance.lowerLimbs,
      'urogenital': instance.urogenital,
      'gynecological': instance.gynecological,
      'neurological': instance.neurological,
    };
