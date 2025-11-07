// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobRequestImpl _$$JobRequestImplFromJson(Map<String, dynamic> json) =>
    _$JobRequestImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      creation: json['creation'] as String?,
      modified: json['modified'] as String?,
      modifiedBy: json['modified_by'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      orderNumber: json['order_number'] as String?,
      operation: json['operation'] as String?,
      status: json['status'] as String?,
      cargoAgent: json['cargo_agent'] as String?,
      clearanceAgent: json['clearance_agent'] as String?,
      exitFromMiddleCustom: (json['exit_from_middle_custom'] as num?)?.toInt(),
      importerName: json['importer_name'] as String?,
      shipVoyageNumber: json['ship__voyage_number'] as String?,
      dockingDate: json['docking_date'],
      portName: json['port_name'] as String?,
      ship: json['ship'] as String?,
      voyageNumber: json['voyage_number'] as String?,
      berth: json['berth'] as String?,
      importType: json['import_type'] as String?,
      addByBillOfLadingOrContainer:
          json['add_by_bill_of_lading_or_container'] as String?,
      numberOfTruckForImport:
          (json['number_of_truck_for_import'] as num?)?.toInt(),
      exportType: json['export_type'] as String?,
      numberOfTrucksForExport:
          (json['number_of_trucks_for_export'] as num?)?.toInt(),
      deliveryOrder: json['delivery_order'],
      amendedFrom: json['amended_from'],
      doctype: json['doctype'] as String?,
      containerListExport: json['container_list_export'] as List<dynamic>?,
      containerList: (json['container_list'] as List<dynamic>?)
          ?.map((e) => ContainerList.fromJson(e as Map<String, dynamic>))
          .toList(),
      cargoItemsExport: json['cargo_items_export'] as List<dynamic>?,
      roroItems: json['roro_items'] as List<dynamic>?,
      roroItemsExport: json['roro_items_export'] as List<dynamic>?,
      cargoItems: json['cargo_items'] as List<dynamic>?,
    );

Map<String, dynamic> _$$JobRequestImplToJson(_$JobRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'creation': instance.creation,
      'modified': instance.modified,
      'modified_by': instance.modifiedBy,
      'docstatus': instance.docstatus,
      'idx': instance.idx,
      'order_number': instance.orderNumber,
      'operation': instance.operation,
      'status': instance.status,
      'cargo_agent': instance.cargoAgent,
      'clearance_agent': instance.clearanceAgent,
      'exit_from_middle_custom': instance.exitFromMiddleCustom,
      'importer_name': instance.importerName,
      'ship__voyage_number': instance.shipVoyageNumber,
      'docking_date': instance.dockingDate,
      'port_name': instance.portName,
      'ship': instance.ship,
      'voyage_number': instance.voyageNumber,
      'berth': instance.berth,
      'import_type': instance.importType,
      'add_by_bill_of_lading_or_container':
          instance.addByBillOfLadingOrContainer,
      'number_of_truck_for_import': instance.numberOfTruckForImport,
      'export_type': instance.exportType,
      'number_of_trucks_for_export': instance.numberOfTrucksForExport,
      'delivery_order': instance.deliveryOrder,
      'amended_from': instance.amendedFrom,
      'doctype': instance.doctype,
      'container_list_export': instance.containerListExport,
      'container_list': instance.containerList,
      'cargo_items_export': instance.cargoItemsExport,
      'roro_items': instance.roroItems,
      'roro_items_export': instance.roroItemsExport,
      'cargo_items': instance.cargoItems,
    };
