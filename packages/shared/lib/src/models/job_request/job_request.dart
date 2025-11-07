import 'package:freezed_annotation/freezed_annotation.dart';

import 'canceled_trip.dart';
import 'connected_trip.dart';
import 'container_list.dart';
import 'manifest_doc.dart';

part 'job_request.freezed.dart';
part 'job_request.g.dart';

@freezed
abstract class JobRequest with _$JobRequest {
  factory JobRequest({
    String? name,
    @JsonKey(name: 'order_number') String? orderNumber,
    @JsonKey(name: 'clearance_agent') String? clearanceAgent,
    String? operation,
    @JsonKey(name: 'is_connected') int? isConnected,
    @JsonKey(name: 'import_type') String? importType,
    @JsonKey(name: 'number_of_truck_for_import') int? numberOfTruckForImport,
    @JsonKey(name: 'export_type') String? exportType,
    @JsonKey(name: 'number_of_trucks_for_export') int? numberOfTrucksForExport,
    @JsonKey(name: 'number_of_truck_roro') dynamic numberOfTruckRoro,
    @JsonKey(name: 'ship__voyage_number') String? shipVoyageNumber,
    String? status,
    String? creation,
    @JsonKey(name: 'allow_merge') bool? allowMerge,
    @JsonKey(name: 'arabic_berth') String? arabicBerth,
    @JsonKey(name: 'manifest_doc') ManifestDoc? manifestDoc,
    @JsonKey(name: 'connected_trips') List<ConnectedTrip>? connectedTrips,
    @JsonKey(name: 'canceled_trips') List<CanceledTrip>? canceledTrips,
    @JsonKey(name: 'container_list') List<ContainerList>? containerList,
    @JsonKey(name: 'cargo_items') List<dynamic>? cargoItems,
  }) = _JobRequest;

  factory JobRequest.fromJson(Map<String, dynamic> json) =>
      _$JobRequestFromJson(json);
}
