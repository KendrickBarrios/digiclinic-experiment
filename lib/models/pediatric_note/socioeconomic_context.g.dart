// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socioeconomic_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocioeconomicContext _$SocioeconomicContextFromJson(
  Map<String, dynamic> json,
) => SocioeconomicContext(
  house: json['house'] as String,
  walls: json['walls'] as String,
  floor: json['floor'] as String,
  roof: json['roof'] as String,
  bathroom: json['bathroom'] as String,
  roomNumber: (json['roomNumber'] as num).toInt(),
  water: json['water'] as bool,
  electricity: json['electricity'] as bool,
  peopleNumber: (json['peopleNumber'] as num).toInt(),
  animals: json['animals'] as String,
  phone: json['phone'] as bool,
  others: nullableStringFromJson(json['others']),
);

Map<String, dynamic> _$SocioeconomicContextToJson(
  SocioeconomicContext instance,
) => <String, dynamic>{
  'house': instance.house,
  'walls': instance.walls,
  'floor': instance.floor,
  'roof': instance.roof,
  'bathroom': instance.bathroom,
  'roomNumber': instance.roomNumber,
  'water': instance.water,
  'electricity': instance.electricity,
  'peopleNumber': instance.peopleNumber,
  'animals': instance.animals,
  'phone': instance.phone,
  'others': instance.others,
};
