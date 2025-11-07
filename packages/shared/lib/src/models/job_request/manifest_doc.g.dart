// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manifest_doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManifestDoc _$ManifestDocFromJson(Map<String, dynamic> json) => _ManifestDoc(
  name: json['name'] as String?,
  owner: json['owner'] as String?,
  creation: json['creation'] as String?,
  modified: json['modified'] as String?,
  modifiedBy: json['modified_by'] as String?,
  docstatus: (json['docstatus'] as num?)?.toInt(),
  idx: (json['idx'] as num?)?.toInt(),
  maifestDate: json['maifest_date'] as String?,
  ship: json['ship'] as String?,
  shipAgent: json['ship_agent'] as String?,
  imoNumber: json['imo_number'] as String?,
  weightGrt: (json['weight_grt'] as num?)?.toInt(),
  voyageNumber: json['voyage_number'] as String?,
  portName: json['port_name'] as String?,
  cargoType: json['cargo_type'] as String?,
  berth: json['berth'] as String?,
  berthNumber: json['berth_number'] as String?,
  berthingDate: json['berthing_date'] as String?,
  doctype: json['doctype'] as String?,
);

Map<String, dynamic> _$ManifestDocToJson(_ManifestDoc instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'maifest_date': instance.maifestDate,
      'ship': instance.ship,
      'ship_agent': instance.shipAgent,
      'imo_number': instance.imoNumber,
      'weight_grt': instance.weightGrt,
      'voyage_number': instance.voyageNumber,
      'port_name': instance.portName,
      'cargo_type': instance.cargoType,
      'berth': instance.berth,
      'berth_number': instance.berthNumber,
      'berthing_date': instance.berthingDate,
      'doctype': instance.doctype,
    };
