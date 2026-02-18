// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  userId: (json['userId'] as num?)?.toInt(),
  role: $enumDecode(_$RoleEnumMap, json['role']),
  email: json['email'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
  firstName: json['firstName'] as String,
  middleName: nullableStringFromJson(json['middleName']),
  firstSurname: json['firstSurname'] as String,
  secondSurname: nullableStringFromJson(json['secondSurname']),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  lastUpdated: json['lastUpdated'] == null
      ? null
      : DateTime.parse(json['lastUpdated'] as String),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'userId': instance.userId,
  'role': _$RoleEnumMap[instance.role]!,
  'email': instance.email,
  'username': instance.username,
  'password': instance.password,
  'firstName': instance.firstName,
  'middleName': instance.middleName,
  'firstSurname': instance.firstSurname,
  'secondSurname': instance.secondSurname,
  'isActive': instance.isActive,
};

const _$RoleEnumMap = {
  Role.ADMIN: 'ADMIN',
  Role.MANAGER: 'MANAGER',
  Role.USER: 'USER',
};
