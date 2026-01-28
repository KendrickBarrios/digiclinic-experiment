import 'package:json_annotation/json_annotation.dart';

part 'systems_review.g.dart';

@JsonSerializable() 
class SystemsReview {

  SystemsReview({
    required this.systemicManifestations,
    required this.tegumentarySystem,
    required this.cardiovascularSystem,
    required this.respiratorySystem,
    required this.gastrointestinalSystem,
    required this.urogenitalSystem,
    required this.neurologicalSystem,
    required this.musculoskeletalSystem
  });

  final String systemicManifestations;
  final String tegumentarySystem;
  final String cardiovascularSystem;
  final String respiratorySystem;
  final String gastrointestinalSystem;
  final String urogenitalSystem;
  final String neurologicalSystem;
  final String musculoskeletalSystem;

  factory SystemsReview.fromJson(Map<String, dynamic> json) =>
    _$SystemsReviewFromJson(json);

  Map<String, dynamic> toJson() => _$SystemsReviewToJson(this);
}