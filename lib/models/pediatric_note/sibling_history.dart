import 'package:digiclinic_experiment/models/model_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sibling_history.g.dart';

@JsonSerializable()
class SiblingHistory {

  SiblingHistory({
    required this.hasSiblings,
    required this.livingSiblings,
    required this.deceasedSiblings,
    this.deceaseAge,
    this.deceaseCause
  });

  final bool hasSiblings;
  final int livingSiblings;
  final int deceasedSiblings;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? deceaseAge;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? deceaseCause;

  factory SiblingHistory.fromJson(Map<String, dynamic> json) =>
    _$SiblingHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$SiblingHistoryToJson(this);
}