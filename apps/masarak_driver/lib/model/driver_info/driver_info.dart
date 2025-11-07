// import 'package:json_annotation/json_annotation.dart';
import 'package:shared/shared.dart';

// import 'active_queue_index.dart';
// import 'trip.dart';

// part 'driver_info.g.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masarak_driver/model/driver_info/active_queue_index.dart';

part 'driver_info.freezed.dart';
part 'driver_info.g.dart';

@freezed
abstract class DriverInfo with _$DriverInfo {
  factory DriverInfo({
    Trip? trip,
    ActiveQueueIndex? activeQueueIndex,
    ActiveQueueIndex? preGateQueueIndex,
    String? driverStatus,
    @JsonKey(name: "tripCheckpoints") List<TripCheckPoint>? tripCheckPoints,

    // int? id,
    // String? name,
    // String? mobile,
    // String? address,
    // @JsonKey(name: 'abella_id') dynamic abellaId,
    // @JsonKey(name: 'created_at') DateTime? createdAt,
    // @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _DriverInfo;

  factory DriverInfo.fromJson(Map<String, dynamic> json) =>
      _$DriverInfoFromJson(json);
}

// @JsonSerializable()
// class DriverInfo {
//   Trip? trip;
//   ActiveQueueIndex? activeQueueIndex;
//   ActiveQueueIndex preGateQueueIndex;
//   String? driverStatus;

//   DriverInfo({
//     this.trip,
//     this.activeQueueIndex,
//     this.preGateQueueIndex,
//     this.driverStatus,
//   });

//   factory DriverInfo.fromJson(Map<String, dynamic> json) {
//     return _$DriverInfoFromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$DriverInfoToJson(this);

//   DriverInfo copyWith({
//     Trip? trip,
//     ActiveQueueIndex? activeQueueIndex,
//     dynamic preGateQueueIndex,
//     String? driverStatus,
//   }) {
//     return DriverInfo(
//       trip: trip ?? this.trip,
//       activeQueueIndex: activeQueueIndex ?? this.activeQueueIndex,
//       preGateQueueIndex: preGateQueueIndex ?? this.preGateQueueIndex,
//       driverStatus: driverStatus ?? this.driverStatus,
//     );
//   }
// }
