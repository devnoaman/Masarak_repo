import 'package:freezed_annotation/freezed_annotation.dart';

import 'container_details.dart';
import 'local_truck.dart';

part 'connected_trip.freezed.dart';
part 'connected_trip.g.dart';

@freezed
abstract class ConnectedTrip with _$ConnectedTrip {
  factory ConnectedTrip({
    String? name,
    String? driver,
    String? truck,
    @JsonKey(name: 'workflow_state') String? workflowState,
    @JsonKey(name: 'container_number') dynamic containerNumber,
    @JsonKey(name: 'container_number_return') dynamic containerNumberReturn,
    @JsonKey(name: 'unique_identifier_customs_number')
    String? uniqueIdentifierCustomsNumber,
    @JsonKey(name: 'trip_uuid') String? tripUuid,
    @JsonKey(name: 'activity_logs') List<dynamic>? activityLogs,
    @JsonKey(name: 'container_details') ContainerDetails? containerDetails,
    @JsonKey(name: 'LocalTruck') LocalTruck? localTruck,
    @JsonKey(name: 'LocalPrinting') dynamic localPrinting,
    @JsonKey(name: 'is_merged') bool? isMerged,
    @JsonKey(name: 'merged_with') dynamic mergedWith,
  }) = _ConnectedTrip;

  factory ConnectedTrip.fromJson(Map<String, dynamic> json) =>
      _$ConnectedTripFromJson(json);
}
