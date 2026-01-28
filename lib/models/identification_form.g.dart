// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identification_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentificationForm _$IdentificationFormFromJson(Map<String, dynamic> json) =>
    IdentificationForm(
      formId: (json['formId'] as num?)?.toInt(),
      recordId: (json['recordId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      recordCode: json['recordCode'] as String,
      visitDate: DateTime.parse(json['visitDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      isActive: json['isActive'] as bool,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String?,
      firstSurname: json['firstSurname'] as String,
      secondSurname: json['secondSurname'] as String?,
      nationalIdNumber: json['nationalIdNumber'] as String,
      ethnicity: json['ethnicity'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      age: (json['age'] as num).toInt(),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      maritalStatus: json['maritalStatus'] as String,
      religion: json['religion'] as String?,
      educationLevel: json['educationLevel'] as String,
      job: json['job'] as String?,
      community: json['community'] as String,
      municipality: json['municipality'] as String,
      city: json['city'] as String,
      emergencyContactName: json['emergencyContactName'] as String,
      contactAddress: json['contactAddress'] as String,
      contactRelationship: json['contactRelationship'] as String,
      contactTelephone: json['contactTelephone'] as String,
      employer: json['employer'] as String?,
      employerAddress: json['employerAddress'] as String?,
      motherNameIdNumber: json['motherNameIdNumber'] as String?,
      fatherNameIdNumber: json['fatherNameIdNumber'] as String?,
      addressList: (json['addressList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IdentificationFormToJson(IdentificationForm instance) =>
    <String, dynamic>{
      'formId': instance.formId,
      'recordId': instance.recordId,
      'userId': instance.userId,
      'recordCode': instance.recordCode,
      'visitDate': instance.visitDate.toIso8601String(),
      'isActive': instance.isActive,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'firstSurname': instance.firstSurname,
      'secondSurname': instance.secondSurname,
      'nationalIdNumber': instance.nationalIdNumber,
      'ethnicity': instance.ethnicity,
      'birthDate': instance.birthDate.toIso8601String(),
      'age': instance.age,
      'gender': _$GenderEnumMap[instance.gender]!,
      'maritalStatus': instance.maritalStatus,
      'religion': instance.religion,
      'educationLevel': instance.educationLevel,
      'job': instance.job,
      'community': instance.community,
      'municipality': instance.municipality,
      'city': instance.city,
      'emergencyContactName': instance.emergencyContactName,
      'contactAddress': instance.contactAddress,
      'contactRelationship': instance.contactRelationship,
      'contactTelephone': instance.contactTelephone,
      'employer': instance.employer,
      'employerAddress': instance.employerAddress,
      'motherNameIdNumber': instance.motherNameIdNumber,
      'fatherNameIdNumber': instance.fatherNameIdNumber,
      'addressList': instance.addressList,
    };

const _$GenderEnumMap = {Gender.M: 'M', Gender.F: 'F'};
