import 'package:json_annotation/json_annotation.dart';

import 'progress_record.dart';
import 'package:digiclinic_experiment/models/model_utils.dart';

part 'progress_note.g.dart';

@JsonSerializable()
class ProgressNote {

  ProgressNote({
    this.noteId,
    required this.userId,
    required this.recordId,
    this.createdAt,
    this.lastUpdated,
    this.progressRecords,
    required this.isActive
  });

  final int? noteId;
  final int userId;
  final int recordId;
  @JsonKey(includeToJson: false)
  final DateTime? createdAt;
  @JsonKey(includeToJson: false)
  final DateTime? lastUpdated;
  final List<ProgressRecord>? progressRecords;
  final bool isActive;

  factory ProgressNote.fromJson(Map<String, dynamic> json) =>
    _$ProgressNoteFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressNoteToJson(this);
}