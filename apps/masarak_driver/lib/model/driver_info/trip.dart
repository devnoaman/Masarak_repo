// import 'package:json_annotation/json_annotation.dart';

// part 'trip.g.dart';

// @JsonSerializable()
// class Trip {
//   String? name;
//   String? driver;
//   @JsonKey(name: 'workflow_state')
//   String? workflowState;
//   @JsonKey(name: 'trip_uuid')
//   String? tripUuid;

//   Trip({this.name, this.driver, this.workflowState, this.tripUuid});

//   factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

//   Map<String, dynamic> toJson() => _$TripToJson(this);

//   Trip copyWith({
//     String? name,
//     String? driver,
//     String? workflowState,
//     String? tripUuid,
//   }) {
//     return Trip(
//       name: name ?? this.name,
//       driver: driver ?? this.driver,
//       workflowState: workflowState ?? this.workflowState,
//       tripUuid: tripUuid ?? this.tripUuid,
//     );
//   }
// }
