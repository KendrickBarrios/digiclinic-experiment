import 'package:json_annotation/json_annotation.dart';

part 'sibling_history.g.dart';

@JsonSerializable()
class SiblingHistory {

  SiblingHistory({
    required this.hasSiblings,
    required this.livingSiblings,
    required this.deceasedSiblings,
    required this.deceaseAge,
    required this.deceaseCause
  });

  final bool hasSiblings;
  final int livingSiblings;
  final int deceasedSiblings;
  final String deceaseAge;
  final String deceaseCause;

  factory SiblingHistory.fromJson(Map<String, dynamic> json) =>
    _$SiblingHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$SiblingHistoryToJson(this);
}