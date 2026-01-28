import 'package:json_annotation/json_annotation.dart';
import 'role.dart';

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
    required this.isActive
  });

  final int? userId;
  final Role role;
  final String email;
  final String username;
  final String password;
  final String firstName;
  final String? middleName;
  final String firstSurname;
  final String? secondSurname;
  final bool isActive;

  factory User.fromJson(Map<String, dynamic> json) =>
    _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}