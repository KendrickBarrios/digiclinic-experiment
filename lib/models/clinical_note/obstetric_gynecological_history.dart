import 'package:json_annotation/json_annotation.dart';

part 'obstetric_gynecological_history.g.dart';

@JsonSerializable()
class ObstetricGynecologicalHistory {

  ObstetricGynecologicalHistory({
    required this.menarcheAge,
    this.sexActivityStartingAge,
    required this.sexualPartnerCount,
    required this.gravidityCount,
    required this.parityCount,
    required this.cesareanCount,
    required this.abortionCount,
    required this.curettageCount,
    required this.birthControl,
    this.birthControlMethod,
    required this.lastMenstrualPeriod,
    required this.amenorrheaWeeksCount,
    required this.menopause,
    this.menopauseDate,
    required this.hormoneReplacement,
    this.hormoneReplacementInfo,
    required this.pap,
    this.lastPapInfo
  });

  final int menarcheAge;
  final int? sexActivityStartingAge;
  final int sexualPartnerCount;
  final int gravidityCount;
  final int parityCount;
  final int cesareanCount;
  final int abortionCount;
  final int curettageCount;
  final bool birthControl;
  final String? birthControlMethod;
  final DateTime lastMenstrualPeriod;
  final int amenorrheaWeeksCount;
  final bool menopause;
  final String? menopauseDate;
  final bool hormoneReplacement;
  final String? hormoneReplacementInfo;
  final bool pap;
  final String? lastPapInfo;

  factory ObstetricGynecologicalHistory.fromJson(Map<String, dynamic> json) =>
    _$ObstetricGynecologicalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$ObstetricGynecologicalHistoryToJson(this);
}