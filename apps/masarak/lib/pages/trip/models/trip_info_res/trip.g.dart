// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      workflowState: json['workflow_state'] as String?,
      jobRequest: json['job_request'] as String?,
      portName: json['port_name'] as String?,
      berthName: json['berth_name'] as String?,
      berth: json['berth'] as String?,
      cargoType: json['cargo_type'] as String?,
      truck: json['truck'] as String?,
      truckNumber: json['truck_number'] as String?,
      queue: json['queue'],
      containerNumber: json['container_number'] as String?,
      containerNumberExport: json['container_number_export'],
      containerNumberReturn: json['container_number_return'],
      secondContainerNumberReturn: json['second_container_number_return'],
      returnContainerSize: json['return_container_size'] as String?,
      driver: json['driver'] as String?,
      driverName: json['driver_name'] as String?,
      driverMotherName: json['driver_mother_name'] as String?,
      currentCheckPoint: json['current_check_point'] as String?,
      currentProcedure: json['current_procedure'] as String?,
      exitFromMiddleCustom: json['exit_from_middle_custom'] as String?,
      doctype: json['doctype'] as String?,
      tripCheckpoints: (json['trip_checkpoints'] as List<dynamic>?)
          ?.map((e) => TripCheckpoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'workflow_state': instance.workflowState,
      'job_request': instance.jobRequest,
      'port_name': instance.portName,
      'berth_name': instance.berthName,
      'berth': instance.berth,
      'cargo_type': instance.cargoType,
      'truck': instance.truck,
      'truck_number': instance.truckNumber,
      'queue': instance.queue,
      'container_number': instance.containerNumber,
      'container_number_export': instance.containerNumberExport,
      'container_number_return': instance.containerNumberReturn,
      'second_container_number_return': instance.secondContainerNumberReturn,
      'return_container_size': instance.returnContainerSize,
      'driver': instance.driver,
      'driver_name': instance.driverName,
      'driver_mother_name': instance.driverMotherName,
      'current_check_point': instance.currentCheckPoint,
      'current_procedure': instance.currentProcedure,
      'exit_from_middle_custom': instance.exitFromMiddleCustom,
      'doctype': instance.doctype,
      'trip_checkpoints': instance.tripCheckpoints,
    };
