import 'package:json_annotation/json_annotation.dart';

import 'package:digiclinic_experiment/models/model_utils.dart';

part 'socioeconomic_context.g.dart';

@JsonSerializable()
class SocioeconomicContext {

  SocioeconomicContext({
    required this.house,
    required this.walls,
    required this.floor,
    required this.roof,
    required this.bathroom,
    required this.roomNumber,
    required this.water,
    required this.electricity,
    required this.peopleNumber,
    required this.animals,
    required this.phone,
    this.others
  });

  final String house;
  final String walls;
  final String floor;
  final String roof;
  final String bathroom;
  final int roomNumber;
  final bool water;
  final bool electricity;
  final int peopleNumber;
  final String animals;
  final bool phone;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? others;

  factory SocioeconomicContext.fromJson(Map<String, dynamic> json) =>
    _$SocioeconomicContextFromJson(json);
  
  Map<String, dynamic> toJson() => _$SocioeconomicContextToJson(this);
}