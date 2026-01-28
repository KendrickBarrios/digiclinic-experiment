import 'package:digiclinic_experiment/models/note_asset/personal_pathological_record.dart';
import 'package:digiclinic_experiment/models/pediatric_note/birth_history.dart';
import 'package:digiclinic_experiment/models/pediatric_note/pediatric_diet.dart';
import 'package:digiclinic_experiment/models/pediatric_note/postnatal_history.dart';
import 'package:digiclinic_experiment/models/pediatric_note/prenatal_history.dart';
import 'package:digiclinic_experiment/models/pediatric_note/psychomotor_development.dart';
import 'package:digiclinic_experiment/models/pediatric_note/socioeconomic_context.dart';
import 'package:digiclinic_experiment/models/pediatric_note/vaccine_record.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pediatric_personal_history.g.dart';

@JsonSerializable()
class PediatricPersonalHistory {

  PediatricPersonalHistory({
    required this.prenatalHistory,
    required this.birthHistory,
    required this.postnatalHistory,
    required this.pediatricDiet,
    this.vaccinesHistory,
    required this.psychomotorDevelopment,
    required this.socioeconomicContext,
    this.communicableDiseases,
    this.previousSurgeries,
    this.chronicDiseases,
    this.hospitalizations,
    this.others
  });

  final PrenatalHistory prenatalHistory;
  final BirthHistory birthHistory;
  final PostnatalHistory postnatalHistory;
  final PediatricDiet pediatricDiet;
  final List<VaccineRecord>? vaccinesHistory;
  final PsychomotorDevelopment psychomotorDevelopment;
  final SocioeconomicContext socioeconomicContext;
  final List<PersonalPathologicalRecord>? communicableDiseases;
  final List<PersonalPathologicalRecord>? previousSurgeries;
  final List<PersonalPathologicalRecord>? chronicDiseases;
  final List<PersonalPathologicalRecord>? hospitalizations;
  final String? others;

  factory PediatricPersonalHistory.fromJson(Map<String, dynamic> json) =>
    _$PediatricPersonalHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$PediatricPersonalHistoryToJson(this);
}