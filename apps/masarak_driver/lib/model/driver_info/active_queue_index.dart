import 'package:json_annotation/json_annotation.dart';

part 'active_queue_index.g.dart';

@JsonSerializable()
class ActiveQueueIndex {
  @JsonKey(name: 'trip_name')
  String? tripName;
  @JsonKey(name: 'job_request')
  String? jobRequest;
  String? truck;
  @JsonKey(name: 'truck_number')
  String? truckNumber;
  String? berth;
  @JsonKey(name: 'berth_name')
  String? berthName;
  @JsonKey(name: 'container_number')
  String? containerNumber;
  @JsonKey(name: 'container_number_return')
  dynamic containerNumberReturn;
  String? driver;
  String? creation;
  @JsonKey(name: 'transportation_agent')
  String? transportationAgent;
  @JsonKey(name: 'global_queue_number')
  int? globalQueueNumber;

  ActiveQueueIndex({
    this.tripName,
    this.jobRequest,
    this.truck,
    this.truckNumber,
    this.berth,
    this.berthName,
    this.containerNumber,
    this.containerNumberReturn,
    this.driver,
    this.creation,
    this.transportationAgent,
    this.globalQueueNumber,
  });

  factory ActiveQueueIndex.fromJson(Map<String, dynamic> json) {
    return _$ActiveQueueIndexFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActiveQueueIndexToJson(this);

  ActiveQueueIndex copyWith({
    String? tripName,
    String? jobRequest,
    String? truck,
    String? truckNumber,
    String? berth,
    String? berthName,
    String? containerNumber,
    dynamic containerNumberReturn,
    String? driver,
    String? creation,
    String? transportationAgent,
    int? globalQueueNumber,
  }) {
    return ActiveQueueIndex(
      tripName: tripName ?? this.tripName,
      jobRequest: jobRequest ?? this.jobRequest,
      truck: truck ?? this.truck,
      truckNumber: truckNumber ?? this.truckNumber,
      berth: berth ?? this.berth,
      berthName: berthName ?? this.berthName,
      containerNumber: containerNumber ?? this.containerNumber,
      containerNumberReturn:
          containerNumberReturn ?? this.containerNumberReturn,
      driver: driver ?? this.driver,
      creation: creation ?? this.creation,
      transportationAgent: transportationAgent ?? this.transportationAgent,
      globalQueueNumber: globalQueueNumber ?? this.globalQueueNumber,
    );
  }
}
