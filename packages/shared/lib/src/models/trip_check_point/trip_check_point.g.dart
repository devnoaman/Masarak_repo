// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_check_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripCheckPoint _$TripCheckPointFromJson(Map<String, dynamic> json) =>
    _TripCheckPoint(
      name: json['name'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      owner: json['owner'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      parent: json['parent'] as String?,
      parentfield: json['parentfield'] as String?,
      parenttype: json['parenttype'] as String?,
      checkPoint: json['check_point'] as String?,
      enteredTime: json['entered_time'] == null
          ? null
          : DateTime.parse(json['entered_time'] as String),
      enteredBy: json['entered_by'],
      exitTime: json['exit_time'] == null
          ? null
          : DateTime.parse(json['exit_time'] as String),
      doneBy: json['done_by'],
      notes: json['notes'],
    );

Map<String, dynamic> _$TripCheckPointToJson(_TripCheckPoint instance) =>
    <String, dynamic>{
      'name': instance.name,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'owner': instance.owner,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'parent': instance.parent,
      'parentfield': instance.parentfield,
      'parenttype': instance.parenttype,
      'check_point': instance.checkPoint,
      'entered_time': instance.enteredTime?.toIso8601String(),
      'entered_by': instance.enteredBy,
      'exit_time': instance.exitTime?.toIso8601String(),
      'done_by': instance.doneBy,
      'notes': instance.notes,
    };
