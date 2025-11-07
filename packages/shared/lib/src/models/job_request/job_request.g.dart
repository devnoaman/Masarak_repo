// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobRequest _$JobRequestFromJson(Map<String, dynamic> json) => _JobRequest(
  name: json['name'] as String?,
  orderNumber: json['order_number'] as String?,
  clearanceAgent: json['clearance_agent'] as String?,
  operation: json['operation'] as String?,
  isConnected: (json['is_connected'] as num?)?.toInt(),
  importType: json['import_type'] as String?,
  numberOfTruckForImport: (json['number_of_truck_for_import'] as num?)?.toInt(),
  exportType: json['export_type'] as String?,
  numberOfTrucksForExport: (json['number_of_trucks_for_export'] as num?)
      ?.toInt(),
  numberOfTruckRoro: json['number_of_truck_roro'],
  shipVoyageNumber: json['ship__voyage_number'] as String?,
  status: json['status'] as String?,
  creation: json['creation'] as String?,
  allowMerge: json['allow_merge'] as bool?,
  arabicBerth: json['arabic_berth'] as String?,
  manifestDoc: json['manifest_doc'] == null
      ? null
      : ManifestDoc.fromJson(json['manifest_doc'] as Map<String, dynamic>),
  connectedTrips: (json['connected_trips'] as List<dynamic>?)
      ?.map((e) => ConnectedTrip.fromJson(e as Map<String, dynamic>))
      .toList(),
  canceledTrips: (json['canceled_trips'] as List<dynamic>?)
      ?.map((e) => CanceledTrip.fromJson(e as Map<String, dynamic>))
      .toList(),
  containerList: (json['container_list'] as List<dynamic>?)
      ?.map((e) => ContainerList.fromJson(e as Map<String, dynamic>))
      .toList(),
  cargoItems: json['cargo_items'] as List<dynamic>?,
);

Map<String, dynamic> _$JobRequestToJson(_JobRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'order_number': instance.orderNumber,
      'clearance_agent': instance.clearanceAgent,
      'operation': instance.operation,
      'is_connected': instance.isConnected,
      'import_type': instance.importType,
      'number_of_truck_for_import': instance.numberOfTruckForImport,
      'export_type': instance.exportType,
      'number_of_trucks_for_export': instance.numberOfTrucksForExport,
      'number_of_truck_roro': instance.numberOfTruckRoro,
      'ship__voyage_number': instance.shipVoyageNumber,
      'status': instance.status,
      'creation': instance.creation,
      'allow_merge': instance.allowMerge,
      'arabic_berth': instance.arabicBerth,
      'manifest_doc': instance.manifestDoc,
      'connected_trips': instance.connectedTrips,
      'canceled_trips': instance.canceledTrips,
      'container_list': instance.containerList,
      'cargo_items': instance.cargoItems,
    };
