// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressNote _$ProgressNoteFromJson(Map<String, dynamic> json) => ProgressNote(
  noteId: (json['noteId'] as num?)?.toInt(),
  userId: (json['userId'] as num).toInt(),
  recordId: (json['recordId'] as num).toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  lastUpdated: json['lastUpdated'] == null
      ? null
      : DateTime.parse(json['lastUpdated'] as String),
  progressRecords: (json['progressRecords'] as List<dynamic>?)
      ?.map((e) => ProgressRecord.fromJson(e as Map<String, dynamic>))
      .toList(),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$ProgressNoteToJson(ProgressNote instance) =>
    <String, dynamic>{
      'noteId': instance.noteId,
      'userId': instance.userId,
      'recordId': instance.recordId,
      'progressRecords': instance.progressRecords,
      'isActive': instance.isActive,
    };
