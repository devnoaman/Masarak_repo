// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_checkpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripCheckpointImpl _$$TripCheckpointImplFromJson(Map<String, dynamic> json) =>
    _$TripCheckpointImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      checkPoint: json['check_point'] as String?,
      enteredTime: json['entered_time'],
      enteredBy: json['entered_by'],
      exitTime: json['exit_time'],
      doneBy: json['done_by'],
      notes: json['notes'],
      parent: json['parent'] as String?,
      parentfield: json['parentfield'] as String?,
      parenttype: json['parenttype'] as String?,
      doctype: json['doctype'] as String?,
    );

Map<String, dynamic> _$$TripCheckpointImplToJson(
        _$TripCheckpointImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'check_point': instance.checkPoint,
      'entered_time': instance.enteredTime,
      'entered_by': instance.enteredBy,
      'exit_time': instance.exitTime,
      'done_by': instance.doneBy,
      'notes': instance.notes,
      'parent': instance.parent,
      'parentfield': instance.parentfield,
      'parenttype': instance.parenttype,
      'doctype': instance.doctype,
    };
