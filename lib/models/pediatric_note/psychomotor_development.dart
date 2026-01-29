import 'package:json_annotation/json_annotation.dart';

part 'psychomotor_development.g.dart';

@JsonSerializable()
class PsychomotorDevelopment {

  PsychomotorDevelopment({
    required this.fixedLook,
    this.fixedLookAge,
    required this.heldUpHead,
    this.heldUpHeadAge,
    required this.smiled,
    this.smiledAge,
    required this.sat,
    this.satAge,
    required this.crawled,
    this.crawledAge,
    required this.walked,
    this.walkedAge,
    required this.proyectedItself,
    this.proyectedItselfAge
  });

  final bool fixedLook;
  final int? fixedLookAge;
  final bool heldUpHead;
  final int? heldUpHeadAge;
  final bool smiled;
  final int? smiledAge;
  final bool sat;
  final int? satAge;
  final bool crawled;
  final int? crawledAge;
  final bool walked;
  final int? walkedAge;
  final bool proyectedItself;
  final int? proyectedItselfAge;

  factory PsychomotorDevelopment.fromJson(Map<String, dynamic> json) =>
    _$PsychomotorDevelopmentFromJson(json);

  Map<String, dynamic> toJson() => _$PsychomotorDevelopmentToJson(this);
}