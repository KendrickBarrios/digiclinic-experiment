// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinical_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicalRecord _$ClinicalRecordFromJson(Map<String, dynamic> json) =>
    ClinicalRecord(
      recordId: (json['recordId'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      recordCode: _nullableStringFromJson(json['recordCode']),
      fullName: json['fullName'] as String,
      lastVisitDate: DateTime.parse(json['lastVisitDate'] as String),
      nextAppointments: _datesFromJson(json['nextAppointments'] as List),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$ClinicalRecordToJson(ClinicalRecord instance) =>
    <String, dynamic>{
      'recordId': instance.recordId,
      'userId': instance.userId,
      'recordCode': instance.recordCode,
      'fullName': instance.fullName,
      'lastVisitDate': instance.lastVisitDate.toIso8601String(),
      'nextAppointments': _datesToJson(instance.nextAppointments),
      'isActive': instance.isActive,
    };
