import 'package:freezed_annotation/freezed_annotation.dart';

import 'container_list.dart';

part 'job_request.freezed.dart';
part 'job_request.g.dart';

@freezed
class JobRequest with _$JobRequest {
  factory JobRequest({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    int? docstatus,
    int? idx,
    @JsonKey(name: 'order_number') String? orderNumber,
    String? operation,
    String? status,
    @JsonKey(name: 'cargo_agent') String? cargoAgent,
    @JsonKey(name: 'clearance_agent') String? clearanceAgent,
    @JsonKey(name: 'exit_from_middle_custom') int? exitFromMiddleCustom,
    @JsonKey(name: 'importer_name') String? importerName,
    @JsonKey(name: 'ship__voyage_number') String? shipVoyageNumber,
    @JsonKey(name: 'docking_date') dynamic dockingDate,
    @JsonKey(name: 'port_name') String? portName,
    String? ship,
    @JsonKey(name: 'voyage_number') String? voyageNumber,
    String? berth,
    @JsonKey(name: 'import_type') String? importType,
    @JsonKey(name: 'add_by_bill_of_lading_or_container')
    String? addByBillOfLadingOrContainer,
    @JsonKey(name: 'number_of_truck_for_import') int? numberOfTruckForImport,
    @JsonKey(name: 'export_type') String? exportType,
    @JsonKey(name: 'number_of_trucks_for_export') int? numberOfTrucksForExport,
    @JsonKey(name: 'delivery_order') dynamic deliveryOrder,
    @JsonKey(name: 'amended_from') dynamic amendedFrom,
    String? doctype,
    @JsonKey(name: 'container_list_export') List<dynamic>? containerListExport,
    @JsonKey(name: 'container_list') List<ContainerList>? containerList,
    @JsonKey(name: 'cargo_items_export') List<dynamic>? cargoItemsExport,
    @JsonKey(name: 'roro_items') List<dynamic>? roroItems,
    @JsonKey(name: 'roro_items_export') List<dynamic>? roroItemsExport,
    @JsonKey(name: 'cargo_items') List<dynamic>? cargoItems,
  }) = _JobRequest;

  factory JobRequest.fromJson(Map<String, dynamic> json) =>
      _$JobRequestFromJson(json);
}
