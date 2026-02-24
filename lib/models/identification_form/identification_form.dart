import 'package:json_annotation/json_annotation.dart';

import 'gender.dart';
import 'package:digiclinic_experiment/models/model_utils.dart';
import 'package:digiclinic_experiment/models/record_document.dart';
part 'identification_form.g.dart';

@JsonSerializable()
class IdentificationForm implements RecordDocument {

  IdentificationForm({
    this.formId,
    required this.recordId,
    required this.userId,
    required this.recordCode,
    required this.visitDate,
    this.createdAt,
    this.lastUpdated,
    required this.isActive,
    required this.firstName,
    this.middleName,
    required this.firstSurname,
    this.secondSurname,
    required this.nationalIdNumber,
    required this.ethnicity,
    required this.birthDate,
    required this.age,
    required this.gender,
    required this.maritalStatus,
    this.religion,
    required this.educationLevel,
    this.job,
    required this.community,
    required this.municipality,
    required this.city,
    required this.emergencyContactName,
    required this.contactAddress,
    required this.contactRelationship,
    required this.contactTelephone,
    this.employer,
    this.employerAddress,
    this.motherNameIdNumber,
    this.fatherNameIdNumber,
    this.addressList   
  });

  final int? formId;
  final int recordId;
  final int userId;
  final String recordCode;
  final DateTime visitDate;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeToJson: false)
  final DateTime? lastUpdated;
  final bool isActive;
  final String firstName;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? middleName;
  final String firstSurname;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? secondSurname;
  final String nationalIdNumber;
  final String ethnicity;
  final DateTime birthDate;
  final int age;
  final Gender gender;
  final String maritalStatus;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? religion;
  final String educationLevel;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? job;
  final String community;
  final String municipality;
  final String city;
  final String emergencyContactName;
  final String contactAddress;
  final String contactRelationship;
  final String contactTelephone;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? employer;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? employerAddress;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? motherNameIdNumber;
  @JsonKey(fromJson: nullableStringFromJson)
  final String? fatherNameIdNumber;
  @JsonKey(
    fromJson: stringListFromJson,
    toJson: stringListToJson
  )
  final List<String>? addressList;

  factory IdentificationForm.fromJson(Map<String, dynamic> json) =>
    _$IdentificationFormFromJson(json);

  Map<String, dynamic> toJson() => _$IdentificationFormToJson(this); 
}