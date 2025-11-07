// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContainerList _$ContainerListFromJson(Map<String, dynamic> json) =>
    _ContainerList(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      containerBillOfLading: json['container__bill_of_lading'] as String?,
      containerSize: json['container_size'] as String?,
      containerType: json['container_type'] as String?,
      containerBillOfLading2: json['container_bill_of_lading'] as String?,
      containerNumber: json['container_number'] as String?,
      parent: json['parent'] as String?,
      parentfield: json['parentfield'] as String?,
      parenttype: json['parenttype'] as String?,
      doctype: json['doctype'] as String?,
      requiredTrucks: (json['required_trucks'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContainerListToJson(_ContainerList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'container__bill_of_lading': instance.containerBillOfLading,
      'container_size': instance.containerSize,
      'container_type': instance.containerType,
      'container_bill_of_lading': instance.containerBillOfLading2,
      'container_number': instance.containerNumber,
      'parent': instance.parent,
      'parentfield': instance.parentfield,
      'parenttype': instance.parenttype,
      'doctype': instance.doctype,
      'required_trucks': instance.requiredTrucks,
    };
