import 'package:json_annotation/json_annotation.dart';

import 'role.dart';
import 'package:digiclinic_experiment/models/model_utils.dart';
part 'user.g.dart';

@JsonSerializable()
class User {

  User({
    this.userId,
    required this.role,
    required this.email,
    required this.username,
    required this.password,
    required this.firstName,
    this.middleName,
    required this.firstSurname,
    this.secondSurname,
    this.createdAt,
    this.lastUpdated,
    required this.isActive
  });

  final int? userId;
  final Role role;
  final String email;
  final String username;
  final String password;
  final String firstName;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? middleName;
  final String firstSurname;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? secondSurname;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  @JsonKey(includeToJson: false)
  final DateTime? lastUpdated;
  final bool isActive;

  factory User.fromJson(Map<String, dynamic> json) =>
    _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}