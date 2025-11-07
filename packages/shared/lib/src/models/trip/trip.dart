import 'package:freezed_annotation/freezed_annotation.dart';

import 'printing_agent.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

class PrintingAgentSerializer
    implements JsonConverter<PrintingAgent?, dynamic> {
  const PrintingAgentSerializer();

  @override
  PrintingAgent? fromJson(dynamic json) {
    if (json == null || json is String) return PrintingAgent(name: json);
    final res = PrintingAgent.fromJson(json);
    return res;
  }

  @override
  dynamic toJson(dynamic json) {
    if (json == null || json is String) return json;
    if (json is PrintingAgent) return (json as PrintingAgent).toJson();

    // final res = ;
    return null;
  }

  // PrintingAgent.fromJson(json as Map<String, dynamic>);
}

@freezed
abstract class Trip with _$Trip {
  factory Trip({
    String? name,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    String? owner,
    int? docstatus,
    int? idx,
    @JsonKey(name: '_user_tags') dynamic userTags,
    @JsonKey(name: '_comments') dynamic comments,
    @JsonKey(name: '_assign') dynamic assign,
    @JsonKey(name: '_liked_by') dynamic likedBy,
    @JsonKey(name: 'container_number') dynamic containerNumber,
    @JsonKey(name: 'job_order') dynamic jobOrder,
    @JsonKey(name: 'job_request') String? jobRequest,
    dynamic queue,
    int? weight,
    String? truck,
    @JsonKey(name: 'trip_code') dynamic tripCode,
    @JsonKey(name: 'workflow_state') String? workflowState,
    String? driver,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'driver_mother_name') String? driverMotherName,
    @JsonKey(name: 'truck_number') String? truckNumber,
    @JsonKey(name: 'cargo_type') String? cargoType,
    @JsonKey(name: 'port_name') String? portName,
    @JsonKey(name: 'berth_name') String? berthName,
    @JsonKey(name: 'current_check_point') dynamic currentCheckPoint,
    @JsonKey(name: 'current_procedure') dynamic currentProcedure,
    @JsonKey(name: 'exit_from_middle_custom') String? exitFromMiddleCustom,
    @JsonKey(name: 'container_number_export') dynamic containerNumberExport,
    @JsonKey(name: 'container_number_return') dynamic containerNumberReturn,
    String? berth,
    @JsonKey(name: 'second_container_number_return')
    dynamic secondContainerNumberReturn,
    @JsonKey(name: '_seen') String? seen,
    @JsonKey(name: 'return_container_size') String? returnContainerSize,
    @JsonKey(name: 'transportation_agent') String? transportationAgent,
    @JsonKey(name: 'amended_from') dynamic amendedFrom,
    @JsonKey(name: 'is_return_only') int? isReturnOnly,
    @JsonKey(name: 'naming_series') String? namingSeries,
    @JsonKey(name: 'is_refeer') int? isRefeer,
    @JsonKey(name: 'trip_uuid') String? tripUuid,
    @JsonKey(name: 'unique_identifier_customs_number')
    String? uniqueIdentifierCustomsNumber,
    @JsonKey(name: 'truck_city') String? truckCity,
    @JsonKey(name: 'container_size') String? containerSize,
    @JsonKey(name: 'legal_main_queue') int? legalMainQueue,
    @JsonKey(name: 'legal_yard_queue') int? legalYardQueue,
    @JsonKey(name: 'return_job_request') dynamic returnJobRequest,
    @JsonKey(name: 'return_job_request_second') dynamic returnJobRequestSecond,
    @JsonKey(name: 'return_berth_name') dynamic returnBerthName,
    @JsonKey(name: 'linked_transportation_agent')
    dynamic linkedTransportationAgent,
    @JsonKey(name: 'linked_base_type') dynamic linkedBaseType,
    String? transactional,
    int? paid,
    @JsonKey(name: 'custom_truck_number') dynamic customTruckNumber,
    @JsonKey(name: 'only_return_trip') int? onlyReturnTrip,
    @JsonKey(name: 'exclude_from_import') int? excludeFromImport,
    @JsonKey(name: 'global_queue_number') dynamic globalQueueNumber,
    @JsonKey(name: 'berth_queue_number') dynamic berthQueueNumber,
    @JsonKey(name: 'second_container_number') dynamic secondContainerNumber,
    @JsonKey(name: 'second_container') dynamic secondContainer,
    // @JsonKey(name: 'printing_agent') String? printingAgent,
    // TODO ADD JSON/STRING CONVERTOR
    @PrintingAgentSerializer()
    @JsonKey(name: 'printing_agent')
    PrintingAgent? printingAgent,
    @JsonKey(name: 'truck_tag_id') dynamic truckTagId,
    dynamic weight1,
    dynamic weight2,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
