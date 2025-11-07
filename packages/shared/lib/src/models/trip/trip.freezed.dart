// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Trip {

 String? get name; String? get creation; String? get modified;@JsonKey(name: 'modified_by') String? get modifiedBy; String? get owner; int? get docstatus; int? get idx;@JsonKey(name: '_user_tags') dynamic get userTags;@JsonKey(name: '_comments') dynamic get comments;@JsonKey(name: '_assign') dynamic get assign;@JsonKey(name: '_liked_by') dynamic get likedBy;@JsonKey(name: 'container_number') dynamic get containerNumber;@JsonKey(name: 'job_order') dynamic get jobOrder;@JsonKey(name: 'job_request') String? get jobRequest; dynamic get queue; int? get weight; String? get truck;@JsonKey(name: 'trip_code') dynamic get tripCode;@JsonKey(name: 'workflow_state') String? get workflowState; String? get driver;@JsonKey(name: 'driver_name') String? get driverName;@JsonKey(name: 'driver_mother_name') String? get driverMotherName;@JsonKey(name: 'truck_number') String? get truckNumber;@JsonKey(name: 'cargo_type') String? get cargoType;@JsonKey(name: 'port_name') String? get portName;@JsonKey(name: 'berth_name') String? get berthName;@JsonKey(name: 'current_check_point') dynamic get currentCheckPoint;@JsonKey(name: 'current_procedure') dynamic get currentProcedure;@JsonKey(name: 'exit_from_middle_custom') String? get exitFromMiddleCustom;@JsonKey(name: 'container_number_export') dynamic get containerNumberExport;@JsonKey(name: 'container_number_return') dynamic get containerNumberReturn; String? get berth;@JsonKey(name: 'second_container_number_return') dynamic get secondContainerNumberReturn;@JsonKey(name: '_seen') String? get seen;@JsonKey(name: 'return_container_size') String? get returnContainerSize;@JsonKey(name: 'transportation_agent') String? get transportationAgent;@JsonKey(name: 'amended_from') dynamic get amendedFrom;@JsonKey(name: 'is_return_only') int? get isReturnOnly;@JsonKey(name: 'naming_series') String? get namingSeries;@JsonKey(name: 'is_refeer') int? get isRefeer;@JsonKey(name: 'trip_uuid') String? get tripUuid;@JsonKey(name: 'unique_identifier_customs_number') String? get uniqueIdentifierCustomsNumber;@JsonKey(name: 'truck_city') String? get truckCity;@JsonKey(name: 'container_size') String? get containerSize;@JsonKey(name: 'legal_main_queue') int? get legalMainQueue;@JsonKey(name: 'legal_yard_queue') int? get legalYardQueue;@JsonKey(name: 'return_job_request') dynamic get returnJobRequest;@JsonKey(name: 'return_job_request_second') dynamic get returnJobRequestSecond;@JsonKey(name: 'return_berth_name') dynamic get returnBerthName;@JsonKey(name: 'linked_transportation_agent') dynamic get linkedTransportationAgent;@JsonKey(name: 'linked_base_type') dynamic get linkedBaseType; String? get transactional; int? get paid;@JsonKey(name: 'custom_truck_number') dynamic get customTruckNumber;@JsonKey(name: 'only_return_trip') int? get onlyReturnTrip;@JsonKey(name: 'exclude_from_import') int? get excludeFromImport;@JsonKey(name: 'global_queue_number') dynamic get globalQueueNumber;@JsonKey(name: 'berth_queue_number') dynamic get berthQueueNumber;@JsonKey(name: 'second_container_number') dynamic get secondContainerNumber;@JsonKey(name: 'second_container') dynamic get secondContainer;// @JsonKey(name: 'printing_agent') String? printingAgent,
// TODO ADD JSON/STRING CONVERTOR
@PrintingAgentSerializer()@JsonKey(name: 'printing_agent') PrintingAgent? get printingAgent;@JsonKey(name: 'truck_tag_id') dynamic get truckTagId; dynamic get weight1; dynamic get weight2;
/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripCopyWith<Trip> get copyWith => _$TripCopyWithImpl<Trip>(this as Trip, _$identity);

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trip&&(identical(other.name, name) || other.name == name)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&const DeepCollectionEquality().equals(other.userTags, userTags)&&const DeepCollectionEquality().equals(other.comments, comments)&&const DeepCollectionEquality().equals(other.assign, assign)&&const DeepCollectionEquality().equals(other.likedBy, likedBy)&&const DeepCollectionEquality().equals(other.containerNumber, containerNumber)&&const DeepCollectionEquality().equals(other.jobOrder, jobOrder)&&(identical(other.jobRequest, jobRequest) || other.jobRequest == jobRequest)&&const DeepCollectionEquality().equals(other.queue, queue)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.truck, truck) || other.truck == truck)&&const DeepCollectionEquality().equals(other.tripCode, tripCode)&&(identical(other.workflowState, workflowState) || other.workflowState == workflowState)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.driverName, driverName) || other.driverName == driverName)&&(identical(other.driverMotherName, driverMotherName) || other.driverMotherName == driverMotherName)&&(identical(other.truckNumber, truckNumber) || other.truckNumber == truckNumber)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.portName, portName) || other.portName == portName)&&(identical(other.berthName, berthName) || other.berthName == berthName)&&const DeepCollectionEquality().equals(other.currentCheckPoint, currentCheckPoint)&&const DeepCollectionEquality().equals(other.currentProcedure, currentProcedure)&&(identical(other.exitFromMiddleCustom, exitFromMiddleCustom) || other.exitFromMiddleCustom == exitFromMiddleCustom)&&const DeepCollectionEquality().equals(other.containerNumberExport, containerNumberExport)&&const DeepCollectionEquality().equals(other.containerNumberReturn, containerNumberReturn)&&(identical(other.berth, berth) || other.berth == berth)&&const DeepCollectionEquality().equals(other.secondContainerNumberReturn, secondContainerNumberReturn)&&(identical(other.seen, seen) || other.seen == seen)&&(identical(other.returnContainerSize, returnContainerSize) || other.returnContainerSize == returnContainerSize)&&(identical(other.transportationAgent, transportationAgent) || other.transportationAgent == transportationAgent)&&const DeepCollectionEquality().equals(other.amendedFrom, amendedFrom)&&(identical(other.isReturnOnly, isReturnOnly) || other.isReturnOnly == isReturnOnly)&&(identical(other.namingSeries, namingSeries) || other.namingSeries == namingSeries)&&(identical(other.isRefeer, isRefeer) || other.isRefeer == isRefeer)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid)&&(identical(other.uniqueIdentifierCustomsNumber, uniqueIdentifierCustomsNumber) || other.uniqueIdentifierCustomsNumber == uniqueIdentifierCustomsNumber)&&(identical(other.truckCity, truckCity) || other.truckCity == truckCity)&&(identical(other.containerSize, containerSize) || other.containerSize == containerSize)&&(identical(other.legalMainQueue, legalMainQueue) || other.legalMainQueue == legalMainQueue)&&(identical(other.legalYardQueue, legalYardQueue) || other.legalYardQueue == legalYardQueue)&&const DeepCollectionEquality().equals(other.returnJobRequest, returnJobRequest)&&const DeepCollectionEquality().equals(other.returnJobRequestSecond, returnJobRequestSecond)&&const DeepCollectionEquality().equals(other.returnBerthName, returnBerthName)&&const DeepCollectionEquality().equals(other.linkedTransportationAgent, linkedTransportationAgent)&&const DeepCollectionEquality().equals(other.linkedBaseType, linkedBaseType)&&(identical(other.transactional, transactional) || other.transactional == transactional)&&(identical(other.paid, paid) || other.paid == paid)&&const DeepCollectionEquality().equals(other.customTruckNumber, customTruckNumber)&&(identical(other.onlyReturnTrip, onlyReturnTrip) || other.onlyReturnTrip == onlyReturnTrip)&&(identical(other.excludeFromImport, excludeFromImport) || other.excludeFromImport == excludeFromImport)&&const DeepCollectionEquality().equals(other.globalQueueNumber, globalQueueNumber)&&const DeepCollectionEquality().equals(other.berthQueueNumber, berthQueueNumber)&&const DeepCollectionEquality().equals(other.secondContainerNumber, secondContainerNumber)&&const DeepCollectionEquality().equals(other.secondContainer, secondContainer)&&(identical(other.printingAgent, printingAgent) || other.printingAgent == printingAgent)&&const DeepCollectionEquality().equals(other.truckTagId, truckTagId)&&const DeepCollectionEquality().equals(other.weight1, weight1)&&const DeepCollectionEquality().equals(other.weight2, weight2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,creation,modified,modifiedBy,owner,docstatus,idx,const DeepCollectionEquality().hash(userTags),const DeepCollectionEquality().hash(comments),const DeepCollectionEquality().hash(assign),const DeepCollectionEquality().hash(likedBy),const DeepCollectionEquality().hash(containerNumber),const DeepCollectionEquality().hash(jobOrder),jobRequest,const DeepCollectionEquality().hash(queue),weight,truck,const DeepCollectionEquality().hash(tripCode),workflowState,driver,driverName,driverMotherName,truckNumber,cargoType,portName,berthName,const DeepCollectionEquality().hash(currentCheckPoint),const DeepCollectionEquality().hash(currentProcedure),exitFromMiddleCustom,const DeepCollectionEquality().hash(containerNumberExport),const DeepCollectionEquality().hash(containerNumberReturn),berth,const DeepCollectionEquality().hash(secondContainerNumberReturn),seen,returnContainerSize,transportationAgent,const DeepCollectionEquality().hash(amendedFrom),isReturnOnly,namingSeries,isRefeer,tripUuid,uniqueIdentifierCustomsNumber,truckCity,containerSize,legalMainQueue,legalYardQueue,const DeepCollectionEquality().hash(returnJobRequest),const DeepCollectionEquality().hash(returnJobRequestSecond),const DeepCollectionEquality().hash(returnBerthName),const DeepCollectionEquality().hash(linkedTransportationAgent),const DeepCollectionEquality().hash(linkedBaseType),transactional,paid,const DeepCollectionEquality().hash(customTruckNumber),onlyReturnTrip,excludeFromImport,const DeepCollectionEquality().hash(globalQueueNumber),const DeepCollectionEquality().hash(berthQueueNumber),const DeepCollectionEquality().hash(secondContainerNumber),const DeepCollectionEquality().hash(secondContainer),printingAgent,const DeepCollectionEquality().hash(truckTagId),const DeepCollectionEquality().hash(weight1),const DeepCollectionEquality().hash(weight2)]);

@override
String toString() {
  return 'Trip(name: $name, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, owner: $owner, docstatus: $docstatus, idx: $idx, userTags: $userTags, comments: $comments, assign: $assign, likedBy: $likedBy, containerNumber: $containerNumber, jobOrder: $jobOrder, jobRequest: $jobRequest, queue: $queue, weight: $weight, truck: $truck, tripCode: $tripCode, workflowState: $workflowState, driver: $driver, driverName: $driverName, driverMotherName: $driverMotherName, truckNumber: $truckNumber, cargoType: $cargoType, portName: $portName, berthName: $berthName, currentCheckPoint: $currentCheckPoint, currentProcedure: $currentProcedure, exitFromMiddleCustom: $exitFromMiddleCustom, containerNumberExport: $containerNumberExport, containerNumberReturn: $containerNumberReturn, berth: $berth, secondContainerNumberReturn: $secondContainerNumberReturn, seen: $seen, returnContainerSize: $returnContainerSize, transportationAgent: $transportationAgent, amendedFrom: $amendedFrom, isReturnOnly: $isReturnOnly, namingSeries: $namingSeries, isRefeer: $isRefeer, tripUuid: $tripUuid, uniqueIdentifierCustomsNumber: $uniqueIdentifierCustomsNumber, truckCity: $truckCity, containerSize: $containerSize, legalMainQueue: $legalMainQueue, legalYardQueue: $legalYardQueue, returnJobRequest: $returnJobRequest, returnJobRequestSecond: $returnJobRequestSecond, returnBerthName: $returnBerthName, linkedTransportationAgent: $linkedTransportationAgent, linkedBaseType: $linkedBaseType, transactional: $transactional, paid: $paid, customTruckNumber: $customTruckNumber, onlyReturnTrip: $onlyReturnTrip, excludeFromImport: $excludeFromImport, globalQueueNumber: $globalQueueNumber, berthQueueNumber: $berthQueueNumber, secondContainerNumber: $secondContainerNumber, secondContainer: $secondContainer, printingAgent: $printingAgent, truckTagId: $truckTagId, weight1: $weight1, weight2: $weight2)';
}


}

/// @nodoc
abstract mixin class $TripCopyWith<$Res>  {
  factory $TripCopyWith(Trip value, $Res Function(Trip) _then) = _$TripCopyWithImpl;
@useResult
$Res call({
 String? name, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, String? owner, int? docstatus, int? idx,@JsonKey(name: '_user_tags') dynamic userTags,@JsonKey(name: '_comments') dynamic comments,@JsonKey(name: '_assign') dynamic assign,@JsonKey(name: '_liked_by') dynamic likedBy,@JsonKey(name: 'container_number') dynamic containerNumber,@JsonKey(name: 'job_order') dynamic jobOrder,@JsonKey(name: 'job_request') String? jobRequest, dynamic queue, int? weight, String? truck,@JsonKey(name: 'trip_code') dynamic tripCode,@JsonKey(name: 'workflow_state') String? workflowState, String? driver,@JsonKey(name: 'driver_name') String? driverName,@JsonKey(name: 'driver_mother_name') String? driverMotherName,@JsonKey(name: 'truck_number') String? truckNumber,@JsonKey(name: 'cargo_type') String? cargoType,@JsonKey(name: 'port_name') String? portName,@JsonKey(name: 'berth_name') String? berthName,@JsonKey(name: 'current_check_point') dynamic currentCheckPoint,@JsonKey(name: 'current_procedure') dynamic currentProcedure,@JsonKey(name: 'exit_from_middle_custom') String? exitFromMiddleCustom,@JsonKey(name: 'container_number_export') dynamic containerNumberExport,@JsonKey(name: 'container_number_return') dynamic containerNumberReturn, String? berth,@JsonKey(name: 'second_container_number_return') dynamic secondContainerNumberReturn,@JsonKey(name: '_seen') String? seen,@JsonKey(name: 'return_container_size') String? returnContainerSize,@JsonKey(name: 'transportation_agent') String? transportationAgent,@JsonKey(name: 'amended_from') dynamic amendedFrom,@JsonKey(name: 'is_return_only') int? isReturnOnly,@JsonKey(name: 'naming_series') String? namingSeries,@JsonKey(name: 'is_refeer') int? isRefeer,@JsonKey(name: 'trip_uuid') String? tripUuid,@JsonKey(name: 'unique_identifier_customs_number') String? uniqueIdentifierCustomsNumber,@JsonKey(name: 'truck_city') String? truckCity,@JsonKey(name: 'container_size') String? containerSize,@JsonKey(name: 'legal_main_queue') int? legalMainQueue,@JsonKey(name: 'legal_yard_queue') int? legalYardQueue,@JsonKey(name: 'return_job_request') dynamic returnJobRequest,@JsonKey(name: 'return_job_request_second') dynamic returnJobRequestSecond,@JsonKey(name: 'return_berth_name') dynamic returnBerthName,@JsonKey(name: 'linked_transportation_agent') dynamic linkedTransportationAgent,@JsonKey(name: 'linked_base_type') dynamic linkedBaseType, String? transactional, int? paid,@JsonKey(name: 'custom_truck_number') dynamic customTruckNumber,@JsonKey(name: 'only_return_trip') int? onlyReturnTrip,@JsonKey(name: 'exclude_from_import') int? excludeFromImport,@JsonKey(name: 'global_queue_number') dynamic globalQueueNumber,@JsonKey(name: 'berth_queue_number') dynamic berthQueueNumber,@JsonKey(name: 'second_container_number') dynamic secondContainerNumber,@JsonKey(name: 'second_container') dynamic secondContainer,@PrintingAgentSerializer()@JsonKey(name: 'printing_agent') PrintingAgent? printingAgent,@JsonKey(name: 'truck_tag_id') dynamic truckTagId, dynamic weight1, dynamic weight2
});


$PrintingAgentCopyWith<$Res>? get printingAgent;

}
/// @nodoc
class _$TripCopyWithImpl<$Res>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._self, this._then);

  final Trip _self;
  final $Res Function(Trip) _then;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? owner = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? userTags = freezed,Object? comments = freezed,Object? assign = freezed,Object? likedBy = freezed,Object? containerNumber = freezed,Object? jobOrder = freezed,Object? jobRequest = freezed,Object? queue = freezed,Object? weight = freezed,Object? truck = freezed,Object? tripCode = freezed,Object? workflowState = freezed,Object? driver = freezed,Object? driverName = freezed,Object? driverMotherName = freezed,Object? truckNumber = freezed,Object? cargoType = freezed,Object? portName = freezed,Object? berthName = freezed,Object? currentCheckPoint = freezed,Object? currentProcedure = freezed,Object? exitFromMiddleCustom = freezed,Object? containerNumberExport = freezed,Object? containerNumberReturn = freezed,Object? berth = freezed,Object? secondContainerNumberReturn = freezed,Object? seen = freezed,Object? returnContainerSize = freezed,Object? transportationAgent = freezed,Object? amendedFrom = freezed,Object? isReturnOnly = freezed,Object? namingSeries = freezed,Object? isRefeer = freezed,Object? tripUuid = freezed,Object? uniqueIdentifierCustomsNumber = freezed,Object? truckCity = freezed,Object? containerSize = freezed,Object? legalMainQueue = freezed,Object? legalYardQueue = freezed,Object? returnJobRequest = freezed,Object? returnJobRequestSecond = freezed,Object? returnBerthName = freezed,Object? linkedTransportationAgent = freezed,Object? linkedBaseType = freezed,Object? transactional = freezed,Object? paid = freezed,Object? customTruckNumber = freezed,Object? onlyReturnTrip = freezed,Object? excludeFromImport = freezed,Object? globalQueueNumber = freezed,Object? berthQueueNumber = freezed,Object? secondContainerNumber = freezed,Object? secondContainer = freezed,Object? printingAgent = freezed,Object? truckTagId = freezed,Object? weight1 = freezed,Object? weight2 = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,userTags: freezed == userTags ? _self.userTags : userTags // ignore: cast_nullable_to_non_nullable
as dynamic,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as dynamic,assign: freezed == assign ? _self.assign : assign // ignore: cast_nullable_to_non_nullable
as dynamic,likedBy: freezed == likedBy ? _self.likedBy : likedBy // ignore: cast_nullable_to_non_nullable
as dynamic,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,jobOrder: freezed == jobOrder ? _self.jobOrder : jobOrder // ignore: cast_nullable_to_non_nullable
as dynamic,jobRequest: freezed == jobRequest ? _self.jobRequest : jobRequest // ignore: cast_nullable_to_non_nullable
as String?,queue: freezed == queue ? _self.queue : queue // ignore: cast_nullable_to_non_nullable
as dynamic,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,tripCode: freezed == tripCode ? _self.tripCode : tripCode // ignore: cast_nullable_to_non_nullable
as dynamic,workflowState: freezed == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,driverName: freezed == driverName ? _self.driverName : driverName // ignore: cast_nullable_to_non_nullable
as String?,driverMotherName: freezed == driverMotherName ? _self.driverMotherName : driverMotherName // ignore: cast_nullable_to_non_nullable
as String?,truckNumber: freezed == truckNumber ? _self.truckNumber : truckNumber // ignore: cast_nullable_to_non_nullable
as String?,cargoType: freezed == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as String?,portName: freezed == portName ? _self.portName : portName // ignore: cast_nullable_to_non_nullable
as String?,berthName: freezed == berthName ? _self.berthName : berthName // ignore: cast_nullable_to_non_nullable
as String?,currentCheckPoint: freezed == currentCheckPoint ? _self.currentCheckPoint : currentCheckPoint // ignore: cast_nullable_to_non_nullable
as dynamic,currentProcedure: freezed == currentProcedure ? _self.currentProcedure : currentProcedure // ignore: cast_nullable_to_non_nullable
as dynamic,exitFromMiddleCustom: freezed == exitFromMiddleCustom ? _self.exitFromMiddleCustom : exitFromMiddleCustom // ignore: cast_nullable_to_non_nullable
as String?,containerNumberExport: freezed == containerNumberExport ? _self.containerNumberExport : containerNumberExport // ignore: cast_nullable_to_non_nullable
as dynamic,containerNumberReturn: freezed == containerNumberReturn ? _self.containerNumberReturn : containerNumberReturn // ignore: cast_nullable_to_non_nullable
as dynamic,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as String?,secondContainerNumberReturn: freezed == secondContainerNumberReturn ? _self.secondContainerNumberReturn : secondContainerNumberReturn // ignore: cast_nullable_to_non_nullable
as dynamic,seen: freezed == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as String?,returnContainerSize: freezed == returnContainerSize ? _self.returnContainerSize : returnContainerSize // ignore: cast_nullable_to_non_nullable
as String?,transportationAgent: freezed == transportationAgent ? _self.transportationAgent : transportationAgent // ignore: cast_nullable_to_non_nullable
as String?,amendedFrom: freezed == amendedFrom ? _self.amendedFrom : amendedFrom // ignore: cast_nullable_to_non_nullable
as dynamic,isReturnOnly: freezed == isReturnOnly ? _self.isReturnOnly : isReturnOnly // ignore: cast_nullable_to_non_nullable
as int?,namingSeries: freezed == namingSeries ? _self.namingSeries : namingSeries // ignore: cast_nullable_to_non_nullable
as String?,isRefeer: freezed == isRefeer ? _self.isRefeer : isRefeer // ignore: cast_nullable_to_non_nullable
as int?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,uniqueIdentifierCustomsNumber: freezed == uniqueIdentifierCustomsNumber ? _self.uniqueIdentifierCustomsNumber : uniqueIdentifierCustomsNumber // ignore: cast_nullable_to_non_nullable
as String?,truckCity: freezed == truckCity ? _self.truckCity : truckCity // ignore: cast_nullable_to_non_nullable
as String?,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as String?,legalMainQueue: freezed == legalMainQueue ? _self.legalMainQueue : legalMainQueue // ignore: cast_nullable_to_non_nullable
as int?,legalYardQueue: freezed == legalYardQueue ? _self.legalYardQueue : legalYardQueue // ignore: cast_nullable_to_non_nullable
as int?,returnJobRequest: freezed == returnJobRequest ? _self.returnJobRequest : returnJobRequest // ignore: cast_nullable_to_non_nullable
as dynamic,returnJobRequestSecond: freezed == returnJobRequestSecond ? _self.returnJobRequestSecond : returnJobRequestSecond // ignore: cast_nullable_to_non_nullable
as dynamic,returnBerthName: freezed == returnBerthName ? _self.returnBerthName : returnBerthName // ignore: cast_nullable_to_non_nullable
as dynamic,linkedTransportationAgent: freezed == linkedTransportationAgent ? _self.linkedTransportationAgent : linkedTransportationAgent // ignore: cast_nullable_to_non_nullable
as dynamic,linkedBaseType: freezed == linkedBaseType ? _self.linkedBaseType : linkedBaseType // ignore: cast_nullable_to_non_nullable
as dynamic,transactional: freezed == transactional ? _self.transactional : transactional // ignore: cast_nullable_to_non_nullable
as String?,paid: freezed == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int?,customTruckNumber: freezed == customTruckNumber ? _self.customTruckNumber : customTruckNumber // ignore: cast_nullable_to_non_nullable
as dynamic,onlyReturnTrip: freezed == onlyReturnTrip ? _self.onlyReturnTrip : onlyReturnTrip // ignore: cast_nullable_to_non_nullable
as int?,excludeFromImport: freezed == excludeFromImport ? _self.excludeFromImport : excludeFromImport // ignore: cast_nullable_to_non_nullable
as int?,globalQueueNumber: freezed == globalQueueNumber ? _self.globalQueueNumber : globalQueueNumber // ignore: cast_nullable_to_non_nullable
as dynamic,berthQueueNumber: freezed == berthQueueNumber ? _self.berthQueueNumber : berthQueueNumber // ignore: cast_nullable_to_non_nullable
as dynamic,secondContainerNumber: freezed == secondContainerNumber ? _self.secondContainerNumber : secondContainerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,secondContainer: freezed == secondContainer ? _self.secondContainer : secondContainer // ignore: cast_nullable_to_non_nullable
as dynamic,printingAgent: freezed == printingAgent ? _self.printingAgent : printingAgent // ignore: cast_nullable_to_non_nullable
as PrintingAgent?,truckTagId: freezed == truckTagId ? _self.truckTagId : truckTagId // ignore: cast_nullable_to_non_nullable
as dynamic,weight1: freezed == weight1 ? _self.weight1 : weight1 // ignore: cast_nullable_to_non_nullable
as dynamic,weight2: freezed == weight2 ? _self.weight2 : weight2 // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrintingAgentCopyWith<$Res>? get printingAgent {
    if (_self.printingAgent == null) {
    return null;
  }

  return $PrintingAgentCopyWith<$Res>(_self.printingAgent!, (value) {
    return _then(_self.copyWith(printingAgent: value));
  });
}
}


/// Adds pattern-matching-related methods to [Trip].
extension TripPatterns on Trip {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trip value)  $default,){
final _that = this;
switch (_that) {
case _Trip():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trip value)?  $default,){
final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  String? owner,  int? docstatus,  int? idx, @JsonKey(name: '_user_tags')  dynamic userTags, @JsonKey(name: '_comments')  dynamic comments, @JsonKey(name: '_assign')  dynamic assign, @JsonKey(name: '_liked_by')  dynamic likedBy, @JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'job_order')  dynamic jobOrder, @JsonKey(name: 'job_request')  String? jobRequest,  dynamic queue,  int? weight,  String? truck, @JsonKey(name: 'trip_code')  dynamic tripCode, @JsonKey(name: 'workflow_state')  String? workflowState,  String? driver, @JsonKey(name: 'driver_name')  String? driverName, @JsonKey(name: 'driver_mother_name')  String? driverMotherName, @JsonKey(name: 'truck_number')  String? truckNumber, @JsonKey(name: 'cargo_type')  String? cargoType, @JsonKey(name: 'port_name')  String? portName, @JsonKey(name: 'berth_name')  String? berthName, @JsonKey(name: 'current_check_point')  dynamic currentCheckPoint, @JsonKey(name: 'current_procedure')  dynamic currentProcedure, @JsonKey(name: 'exit_from_middle_custom')  String? exitFromMiddleCustom, @JsonKey(name: 'container_number_export')  dynamic containerNumberExport, @JsonKey(name: 'container_number_return')  dynamic containerNumberReturn,  String? berth, @JsonKey(name: 'second_container_number_return')  dynamic secondContainerNumberReturn, @JsonKey(name: '_seen')  String? seen, @JsonKey(name: 'return_container_size')  String? returnContainerSize, @JsonKey(name: 'transportation_agent')  String? transportationAgent, @JsonKey(name: 'amended_from')  dynamic amendedFrom, @JsonKey(name: 'is_return_only')  int? isReturnOnly, @JsonKey(name: 'naming_series')  String? namingSeries, @JsonKey(name: 'is_refeer')  int? isRefeer, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'unique_identifier_customs_number')  String? uniqueIdentifierCustomsNumber, @JsonKey(name: 'truck_city')  String? truckCity, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'legal_main_queue')  int? legalMainQueue, @JsonKey(name: 'legal_yard_queue')  int? legalYardQueue, @JsonKey(name: 'return_job_request')  dynamic returnJobRequest, @JsonKey(name: 'return_job_request_second')  dynamic returnJobRequestSecond, @JsonKey(name: 'return_berth_name')  dynamic returnBerthName, @JsonKey(name: 'linked_transportation_agent')  dynamic linkedTransportationAgent, @JsonKey(name: 'linked_base_type')  dynamic linkedBaseType,  String? transactional,  int? paid, @JsonKey(name: 'custom_truck_number')  dynamic customTruckNumber, @JsonKey(name: 'only_return_trip')  int? onlyReturnTrip, @JsonKey(name: 'exclude_from_import')  int? excludeFromImport, @JsonKey(name: 'global_queue_number')  dynamic globalQueueNumber, @JsonKey(name: 'berth_queue_number')  dynamic berthQueueNumber, @JsonKey(name: 'second_container_number')  dynamic secondContainerNumber, @JsonKey(name: 'second_container')  dynamic secondContainer, @PrintingAgentSerializer()@JsonKey(name: 'printing_agent')  PrintingAgent? printingAgent, @JsonKey(name: 'truck_tag_id')  dynamic truckTagId,  dynamic weight1,  dynamic weight2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that.name,_that.creation,_that.modified,_that.modifiedBy,_that.owner,_that.docstatus,_that.idx,_that.userTags,_that.comments,_that.assign,_that.likedBy,_that.containerNumber,_that.jobOrder,_that.jobRequest,_that.queue,_that.weight,_that.truck,_that.tripCode,_that.workflowState,_that.driver,_that.driverName,_that.driverMotherName,_that.truckNumber,_that.cargoType,_that.portName,_that.berthName,_that.currentCheckPoint,_that.currentProcedure,_that.exitFromMiddleCustom,_that.containerNumberExport,_that.containerNumberReturn,_that.berth,_that.secondContainerNumberReturn,_that.seen,_that.returnContainerSize,_that.transportationAgent,_that.amendedFrom,_that.isReturnOnly,_that.namingSeries,_that.isRefeer,_that.tripUuid,_that.uniqueIdentifierCustomsNumber,_that.truckCity,_that.containerSize,_that.legalMainQueue,_that.legalYardQueue,_that.returnJobRequest,_that.returnJobRequestSecond,_that.returnBerthName,_that.linkedTransportationAgent,_that.linkedBaseType,_that.transactional,_that.paid,_that.customTruckNumber,_that.onlyReturnTrip,_that.excludeFromImport,_that.globalQueueNumber,_that.berthQueueNumber,_that.secondContainerNumber,_that.secondContainer,_that.printingAgent,_that.truckTagId,_that.weight1,_that.weight2);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  String? owner,  int? docstatus,  int? idx, @JsonKey(name: '_user_tags')  dynamic userTags, @JsonKey(name: '_comments')  dynamic comments, @JsonKey(name: '_assign')  dynamic assign, @JsonKey(name: '_liked_by')  dynamic likedBy, @JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'job_order')  dynamic jobOrder, @JsonKey(name: 'job_request')  String? jobRequest,  dynamic queue,  int? weight,  String? truck, @JsonKey(name: 'trip_code')  dynamic tripCode, @JsonKey(name: 'workflow_state')  String? workflowState,  String? driver, @JsonKey(name: 'driver_name')  String? driverName, @JsonKey(name: 'driver_mother_name')  String? driverMotherName, @JsonKey(name: 'truck_number')  String? truckNumber, @JsonKey(name: 'cargo_type')  String? cargoType, @JsonKey(name: 'port_name')  String? portName, @JsonKey(name: 'berth_name')  String? berthName, @JsonKey(name: 'current_check_point')  dynamic currentCheckPoint, @JsonKey(name: 'current_procedure')  dynamic currentProcedure, @JsonKey(name: 'exit_from_middle_custom')  String? exitFromMiddleCustom, @JsonKey(name: 'container_number_export')  dynamic containerNumberExport, @JsonKey(name: 'container_number_return')  dynamic containerNumberReturn,  String? berth, @JsonKey(name: 'second_container_number_return')  dynamic secondContainerNumberReturn, @JsonKey(name: '_seen')  String? seen, @JsonKey(name: 'return_container_size')  String? returnContainerSize, @JsonKey(name: 'transportation_agent')  String? transportationAgent, @JsonKey(name: 'amended_from')  dynamic amendedFrom, @JsonKey(name: 'is_return_only')  int? isReturnOnly, @JsonKey(name: 'naming_series')  String? namingSeries, @JsonKey(name: 'is_refeer')  int? isRefeer, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'unique_identifier_customs_number')  String? uniqueIdentifierCustomsNumber, @JsonKey(name: 'truck_city')  String? truckCity, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'legal_main_queue')  int? legalMainQueue, @JsonKey(name: 'legal_yard_queue')  int? legalYardQueue, @JsonKey(name: 'return_job_request')  dynamic returnJobRequest, @JsonKey(name: 'return_job_request_second')  dynamic returnJobRequestSecond, @JsonKey(name: 'return_berth_name')  dynamic returnBerthName, @JsonKey(name: 'linked_transportation_agent')  dynamic linkedTransportationAgent, @JsonKey(name: 'linked_base_type')  dynamic linkedBaseType,  String? transactional,  int? paid, @JsonKey(name: 'custom_truck_number')  dynamic customTruckNumber, @JsonKey(name: 'only_return_trip')  int? onlyReturnTrip, @JsonKey(name: 'exclude_from_import')  int? excludeFromImport, @JsonKey(name: 'global_queue_number')  dynamic globalQueueNumber, @JsonKey(name: 'berth_queue_number')  dynamic berthQueueNumber, @JsonKey(name: 'second_container_number')  dynamic secondContainerNumber, @JsonKey(name: 'second_container')  dynamic secondContainer, @PrintingAgentSerializer()@JsonKey(name: 'printing_agent')  PrintingAgent? printingAgent, @JsonKey(name: 'truck_tag_id')  dynamic truckTagId,  dynamic weight1,  dynamic weight2)  $default,) {final _that = this;
switch (_that) {
case _Trip():
return $default(_that.name,_that.creation,_that.modified,_that.modifiedBy,_that.owner,_that.docstatus,_that.idx,_that.userTags,_that.comments,_that.assign,_that.likedBy,_that.containerNumber,_that.jobOrder,_that.jobRequest,_that.queue,_that.weight,_that.truck,_that.tripCode,_that.workflowState,_that.driver,_that.driverName,_that.driverMotherName,_that.truckNumber,_that.cargoType,_that.portName,_that.berthName,_that.currentCheckPoint,_that.currentProcedure,_that.exitFromMiddleCustom,_that.containerNumberExport,_that.containerNumberReturn,_that.berth,_that.secondContainerNumberReturn,_that.seen,_that.returnContainerSize,_that.transportationAgent,_that.amendedFrom,_that.isReturnOnly,_that.namingSeries,_that.isRefeer,_that.tripUuid,_that.uniqueIdentifierCustomsNumber,_that.truckCity,_that.containerSize,_that.legalMainQueue,_that.legalYardQueue,_that.returnJobRequest,_that.returnJobRequestSecond,_that.returnBerthName,_that.linkedTransportationAgent,_that.linkedBaseType,_that.transactional,_that.paid,_that.customTruckNumber,_that.onlyReturnTrip,_that.excludeFromImport,_that.globalQueueNumber,_that.berthQueueNumber,_that.secondContainerNumber,_that.secondContainer,_that.printingAgent,_that.truckTagId,_that.weight1,_that.weight2);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  String? owner,  int? docstatus,  int? idx, @JsonKey(name: '_user_tags')  dynamic userTags, @JsonKey(name: '_comments')  dynamic comments, @JsonKey(name: '_assign')  dynamic assign, @JsonKey(name: '_liked_by')  dynamic likedBy, @JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'job_order')  dynamic jobOrder, @JsonKey(name: 'job_request')  String? jobRequest,  dynamic queue,  int? weight,  String? truck, @JsonKey(name: 'trip_code')  dynamic tripCode, @JsonKey(name: 'workflow_state')  String? workflowState,  String? driver, @JsonKey(name: 'driver_name')  String? driverName, @JsonKey(name: 'driver_mother_name')  String? driverMotherName, @JsonKey(name: 'truck_number')  String? truckNumber, @JsonKey(name: 'cargo_type')  String? cargoType, @JsonKey(name: 'port_name')  String? portName, @JsonKey(name: 'berth_name')  String? berthName, @JsonKey(name: 'current_check_point')  dynamic currentCheckPoint, @JsonKey(name: 'current_procedure')  dynamic currentProcedure, @JsonKey(name: 'exit_from_middle_custom')  String? exitFromMiddleCustom, @JsonKey(name: 'container_number_export')  dynamic containerNumberExport, @JsonKey(name: 'container_number_return')  dynamic containerNumberReturn,  String? berth, @JsonKey(name: 'second_container_number_return')  dynamic secondContainerNumberReturn, @JsonKey(name: '_seen')  String? seen, @JsonKey(name: 'return_container_size')  String? returnContainerSize, @JsonKey(name: 'transportation_agent')  String? transportationAgent, @JsonKey(name: 'amended_from')  dynamic amendedFrom, @JsonKey(name: 'is_return_only')  int? isReturnOnly, @JsonKey(name: 'naming_series')  String? namingSeries, @JsonKey(name: 'is_refeer')  int? isRefeer, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'unique_identifier_customs_number')  String? uniqueIdentifierCustomsNumber, @JsonKey(name: 'truck_city')  String? truckCity, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'legal_main_queue')  int? legalMainQueue, @JsonKey(name: 'legal_yard_queue')  int? legalYardQueue, @JsonKey(name: 'return_job_request')  dynamic returnJobRequest, @JsonKey(name: 'return_job_request_second')  dynamic returnJobRequestSecond, @JsonKey(name: 'return_berth_name')  dynamic returnBerthName, @JsonKey(name: 'linked_transportation_agent')  dynamic linkedTransportationAgent, @JsonKey(name: 'linked_base_type')  dynamic linkedBaseType,  String? transactional,  int? paid, @JsonKey(name: 'custom_truck_number')  dynamic customTruckNumber, @JsonKey(name: 'only_return_trip')  int? onlyReturnTrip, @JsonKey(name: 'exclude_from_import')  int? excludeFromImport, @JsonKey(name: 'global_queue_number')  dynamic globalQueueNumber, @JsonKey(name: 'berth_queue_number')  dynamic berthQueueNumber, @JsonKey(name: 'second_container_number')  dynamic secondContainerNumber, @JsonKey(name: 'second_container')  dynamic secondContainer, @PrintingAgentSerializer()@JsonKey(name: 'printing_agent')  PrintingAgent? printingAgent, @JsonKey(name: 'truck_tag_id')  dynamic truckTagId,  dynamic weight1,  dynamic weight2)?  $default,) {final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that.name,_that.creation,_that.modified,_that.modifiedBy,_that.owner,_that.docstatus,_that.idx,_that.userTags,_that.comments,_that.assign,_that.likedBy,_that.containerNumber,_that.jobOrder,_that.jobRequest,_that.queue,_that.weight,_that.truck,_that.tripCode,_that.workflowState,_that.driver,_that.driverName,_that.driverMotherName,_that.truckNumber,_that.cargoType,_that.portName,_that.berthName,_that.currentCheckPoint,_that.currentProcedure,_that.exitFromMiddleCustom,_that.containerNumberExport,_that.containerNumberReturn,_that.berth,_that.secondContainerNumberReturn,_that.seen,_that.returnContainerSize,_that.transportationAgent,_that.amendedFrom,_that.isReturnOnly,_that.namingSeries,_that.isRefeer,_that.tripUuid,_that.uniqueIdentifierCustomsNumber,_that.truckCity,_that.containerSize,_that.legalMainQueue,_that.legalYardQueue,_that.returnJobRequest,_that.returnJobRequestSecond,_that.returnBerthName,_that.linkedTransportationAgent,_that.linkedBaseType,_that.transactional,_that.paid,_that.customTruckNumber,_that.onlyReturnTrip,_that.excludeFromImport,_that.globalQueueNumber,_that.berthQueueNumber,_that.secondContainerNumber,_that.secondContainer,_that.printingAgent,_that.truckTagId,_that.weight1,_that.weight2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Trip implements Trip {
   _Trip({this.name, this.creation, this.modified, @JsonKey(name: 'modified_by') this.modifiedBy, this.owner, this.docstatus, this.idx, @JsonKey(name: '_user_tags') this.userTags, @JsonKey(name: '_comments') this.comments, @JsonKey(name: '_assign') this.assign, @JsonKey(name: '_liked_by') this.likedBy, @JsonKey(name: 'container_number') this.containerNumber, @JsonKey(name: 'job_order') this.jobOrder, @JsonKey(name: 'job_request') this.jobRequest, this.queue, this.weight, this.truck, @JsonKey(name: 'trip_code') this.tripCode, @JsonKey(name: 'workflow_state') this.workflowState, this.driver, @JsonKey(name: 'driver_name') this.driverName, @JsonKey(name: 'driver_mother_name') this.driverMotherName, @JsonKey(name: 'truck_number') this.truckNumber, @JsonKey(name: 'cargo_type') this.cargoType, @JsonKey(name: 'port_name') this.portName, @JsonKey(name: 'berth_name') this.berthName, @JsonKey(name: 'current_check_point') this.currentCheckPoint, @JsonKey(name: 'current_procedure') this.currentProcedure, @JsonKey(name: 'exit_from_middle_custom') this.exitFromMiddleCustom, @JsonKey(name: 'container_number_export') this.containerNumberExport, @JsonKey(name: 'container_number_return') this.containerNumberReturn, this.berth, @JsonKey(name: 'second_container_number_return') this.secondContainerNumberReturn, @JsonKey(name: '_seen') this.seen, @JsonKey(name: 'return_container_size') this.returnContainerSize, @JsonKey(name: 'transportation_agent') this.transportationAgent, @JsonKey(name: 'amended_from') this.amendedFrom, @JsonKey(name: 'is_return_only') this.isReturnOnly, @JsonKey(name: 'naming_series') this.namingSeries, @JsonKey(name: 'is_refeer') this.isRefeer, @JsonKey(name: 'trip_uuid') this.tripUuid, @JsonKey(name: 'unique_identifier_customs_number') this.uniqueIdentifierCustomsNumber, @JsonKey(name: 'truck_city') this.truckCity, @JsonKey(name: 'container_size') this.containerSize, @JsonKey(name: 'legal_main_queue') this.legalMainQueue, @JsonKey(name: 'legal_yard_queue') this.legalYardQueue, @JsonKey(name: 'return_job_request') this.returnJobRequest, @JsonKey(name: 'return_job_request_second') this.returnJobRequestSecond, @JsonKey(name: 'return_berth_name') this.returnBerthName, @JsonKey(name: 'linked_transportation_agent') this.linkedTransportationAgent, @JsonKey(name: 'linked_base_type') this.linkedBaseType, this.transactional, this.paid, @JsonKey(name: 'custom_truck_number') this.customTruckNumber, @JsonKey(name: 'only_return_trip') this.onlyReturnTrip, @JsonKey(name: 'exclude_from_import') this.excludeFromImport, @JsonKey(name: 'global_queue_number') this.globalQueueNumber, @JsonKey(name: 'berth_queue_number') this.berthQueueNumber, @JsonKey(name: 'second_container_number') this.secondContainerNumber, @JsonKey(name: 'second_container') this.secondContainer, @PrintingAgentSerializer()@JsonKey(name: 'printing_agent') this.printingAgent, @JsonKey(name: 'truck_tag_id') this.truckTagId, this.weight1, this.weight2});
  factory _Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

@override final  String? name;
@override final  String? creation;
@override final  String? modified;
@override@JsonKey(name: 'modified_by') final  String? modifiedBy;
@override final  String? owner;
@override final  int? docstatus;
@override final  int? idx;
@override@JsonKey(name: '_user_tags') final  dynamic userTags;
@override@JsonKey(name: '_comments') final  dynamic comments;
@override@JsonKey(name: '_assign') final  dynamic assign;
@override@JsonKey(name: '_liked_by') final  dynamic likedBy;
@override@JsonKey(name: 'container_number') final  dynamic containerNumber;
@override@JsonKey(name: 'job_order') final  dynamic jobOrder;
@override@JsonKey(name: 'job_request') final  String? jobRequest;
@override final  dynamic queue;
@override final  int? weight;
@override final  String? truck;
@override@JsonKey(name: 'trip_code') final  dynamic tripCode;
@override@JsonKey(name: 'workflow_state') final  String? workflowState;
@override final  String? driver;
@override@JsonKey(name: 'driver_name') final  String? driverName;
@override@JsonKey(name: 'driver_mother_name') final  String? driverMotherName;
@override@JsonKey(name: 'truck_number') final  String? truckNumber;
@override@JsonKey(name: 'cargo_type') final  String? cargoType;
@override@JsonKey(name: 'port_name') final  String? portName;
@override@JsonKey(name: 'berth_name') final  String? berthName;
@override@JsonKey(name: 'current_check_point') final  dynamic currentCheckPoint;
@override@JsonKey(name: 'current_procedure') final  dynamic currentProcedure;
@override@JsonKey(name: 'exit_from_middle_custom') final  String? exitFromMiddleCustom;
@override@JsonKey(name: 'container_number_export') final  dynamic containerNumberExport;
@override@JsonKey(name: 'container_number_return') final  dynamic containerNumberReturn;
@override final  String? berth;
@override@JsonKey(name: 'second_container_number_return') final  dynamic secondContainerNumberReturn;
@override@JsonKey(name: '_seen') final  String? seen;
@override@JsonKey(name: 'return_container_size') final  String? returnContainerSize;
@override@JsonKey(name: 'transportation_agent') final  String? transportationAgent;
@override@JsonKey(name: 'amended_from') final  dynamic amendedFrom;
@override@JsonKey(name: 'is_return_only') final  int? isReturnOnly;
@override@JsonKey(name: 'naming_series') final  String? namingSeries;
@override@JsonKey(name: 'is_refeer') final  int? isRefeer;
@override@JsonKey(name: 'trip_uuid') final  String? tripUuid;
@override@JsonKey(name: 'unique_identifier_customs_number') final  String? uniqueIdentifierCustomsNumber;
@override@JsonKey(name: 'truck_city') final  String? truckCity;
@override@JsonKey(name: 'container_size') final  String? containerSize;
@override@JsonKey(name: 'legal_main_queue') final  int? legalMainQueue;
@override@JsonKey(name: 'legal_yard_queue') final  int? legalYardQueue;
@override@JsonKey(name: 'return_job_request') final  dynamic returnJobRequest;
@override@JsonKey(name: 'return_job_request_second') final  dynamic returnJobRequestSecond;
@override@JsonKey(name: 'return_berth_name') final  dynamic returnBerthName;
@override@JsonKey(name: 'linked_transportation_agent') final  dynamic linkedTransportationAgent;
@override@JsonKey(name: 'linked_base_type') final  dynamic linkedBaseType;
@override final  String? transactional;
@override final  int? paid;
@override@JsonKey(name: 'custom_truck_number') final  dynamic customTruckNumber;
@override@JsonKey(name: 'only_return_trip') final  int? onlyReturnTrip;
@override@JsonKey(name: 'exclude_from_import') final  int? excludeFromImport;
@override@JsonKey(name: 'global_queue_number') final  dynamic globalQueueNumber;
@override@JsonKey(name: 'berth_queue_number') final  dynamic berthQueueNumber;
@override@JsonKey(name: 'second_container_number') final  dynamic secondContainerNumber;
@override@JsonKey(name: 'second_container') final  dynamic secondContainer;
// @JsonKey(name: 'printing_agent') String? printingAgent,
// TODO ADD JSON/STRING CONVERTOR
@override@PrintingAgentSerializer()@JsonKey(name: 'printing_agent') final  PrintingAgent? printingAgent;
@override@JsonKey(name: 'truck_tag_id') final  dynamic truckTagId;
@override final  dynamic weight1;
@override final  dynamic weight2;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCopyWith<_Trip> get copyWith => __$TripCopyWithImpl<_Trip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trip&&(identical(other.name, name) || other.name == name)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&const DeepCollectionEquality().equals(other.userTags, userTags)&&const DeepCollectionEquality().equals(other.comments, comments)&&const DeepCollectionEquality().equals(other.assign, assign)&&const DeepCollectionEquality().equals(other.likedBy, likedBy)&&const DeepCollectionEquality().equals(other.containerNumber, containerNumber)&&const DeepCollectionEquality().equals(other.jobOrder, jobOrder)&&(identical(other.jobRequest, jobRequest) || other.jobRequest == jobRequest)&&const DeepCollectionEquality().equals(other.queue, queue)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.truck, truck) || other.truck == truck)&&const DeepCollectionEquality().equals(other.tripCode, tripCode)&&(identical(other.workflowState, workflowState) || other.workflowState == workflowState)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.driverName, driverName) || other.driverName == driverName)&&(identical(other.driverMotherName, driverMotherName) || other.driverMotherName == driverMotherName)&&(identical(other.truckNumber, truckNumber) || other.truckNumber == truckNumber)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.portName, portName) || other.portName == portName)&&(identical(other.berthName, berthName) || other.berthName == berthName)&&const DeepCollectionEquality().equals(other.currentCheckPoint, currentCheckPoint)&&const DeepCollectionEquality().equals(other.currentProcedure, currentProcedure)&&(identical(other.exitFromMiddleCustom, exitFromMiddleCustom) || other.exitFromMiddleCustom == exitFromMiddleCustom)&&const DeepCollectionEquality().equals(other.containerNumberExport, containerNumberExport)&&const DeepCollectionEquality().equals(other.containerNumberReturn, containerNumberReturn)&&(identical(other.berth, berth) || other.berth == berth)&&const DeepCollectionEquality().equals(other.secondContainerNumberReturn, secondContainerNumberReturn)&&(identical(other.seen, seen) || other.seen == seen)&&(identical(other.returnContainerSize, returnContainerSize) || other.returnContainerSize == returnContainerSize)&&(identical(other.transportationAgent, transportationAgent) || other.transportationAgent == transportationAgent)&&const DeepCollectionEquality().equals(other.amendedFrom, amendedFrom)&&(identical(other.isReturnOnly, isReturnOnly) || other.isReturnOnly == isReturnOnly)&&(identical(other.namingSeries, namingSeries) || other.namingSeries == namingSeries)&&(identical(other.isRefeer, isRefeer) || other.isRefeer == isRefeer)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid)&&(identical(other.uniqueIdentifierCustomsNumber, uniqueIdentifierCustomsNumber) || other.uniqueIdentifierCustomsNumber == uniqueIdentifierCustomsNumber)&&(identical(other.truckCity, truckCity) || other.truckCity == truckCity)&&(identical(other.containerSize, containerSize) || other.containerSize == containerSize)&&(identical(other.legalMainQueue, legalMainQueue) || other.legalMainQueue == legalMainQueue)&&(identical(other.legalYardQueue, legalYardQueue) || other.legalYardQueue == legalYardQueue)&&const DeepCollectionEquality().equals(other.returnJobRequest, returnJobRequest)&&const DeepCollectionEquality().equals(other.returnJobRequestSecond, returnJobRequestSecond)&&const DeepCollectionEquality().equals(other.returnBerthName, returnBerthName)&&const DeepCollectionEquality().equals(other.linkedTransportationAgent, linkedTransportationAgent)&&const DeepCollectionEquality().equals(other.linkedBaseType, linkedBaseType)&&(identical(other.transactional, transactional) || other.transactional == transactional)&&(identical(other.paid, paid) || other.paid == paid)&&const DeepCollectionEquality().equals(other.customTruckNumber, customTruckNumber)&&(identical(other.onlyReturnTrip, onlyReturnTrip) || other.onlyReturnTrip == onlyReturnTrip)&&(identical(other.excludeFromImport, excludeFromImport) || other.excludeFromImport == excludeFromImport)&&const DeepCollectionEquality().equals(other.globalQueueNumber, globalQueueNumber)&&const DeepCollectionEquality().equals(other.berthQueueNumber, berthQueueNumber)&&const DeepCollectionEquality().equals(other.secondContainerNumber, secondContainerNumber)&&const DeepCollectionEquality().equals(other.secondContainer, secondContainer)&&(identical(other.printingAgent, printingAgent) || other.printingAgent == printingAgent)&&const DeepCollectionEquality().equals(other.truckTagId, truckTagId)&&const DeepCollectionEquality().equals(other.weight1, weight1)&&const DeepCollectionEquality().equals(other.weight2, weight2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,creation,modified,modifiedBy,owner,docstatus,idx,const DeepCollectionEquality().hash(userTags),const DeepCollectionEquality().hash(comments),const DeepCollectionEquality().hash(assign),const DeepCollectionEquality().hash(likedBy),const DeepCollectionEquality().hash(containerNumber),const DeepCollectionEquality().hash(jobOrder),jobRequest,const DeepCollectionEquality().hash(queue),weight,truck,const DeepCollectionEquality().hash(tripCode),workflowState,driver,driverName,driverMotherName,truckNumber,cargoType,portName,berthName,const DeepCollectionEquality().hash(currentCheckPoint),const DeepCollectionEquality().hash(currentProcedure),exitFromMiddleCustom,const DeepCollectionEquality().hash(containerNumberExport),const DeepCollectionEquality().hash(containerNumberReturn),berth,const DeepCollectionEquality().hash(secondContainerNumberReturn),seen,returnContainerSize,transportationAgent,const DeepCollectionEquality().hash(amendedFrom),isReturnOnly,namingSeries,isRefeer,tripUuid,uniqueIdentifierCustomsNumber,truckCity,containerSize,legalMainQueue,legalYardQueue,const DeepCollectionEquality().hash(returnJobRequest),const DeepCollectionEquality().hash(returnJobRequestSecond),const DeepCollectionEquality().hash(returnBerthName),const DeepCollectionEquality().hash(linkedTransportationAgent),const DeepCollectionEquality().hash(linkedBaseType),transactional,paid,const DeepCollectionEquality().hash(customTruckNumber),onlyReturnTrip,excludeFromImport,const DeepCollectionEquality().hash(globalQueueNumber),const DeepCollectionEquality().hash(berthQueueNumber),const DeepCollectionEquality().hash(secondContainerNumber),const DeepCollectionEquality().hash(secondContainer),printingAgent,const DeepCollectionEquality().hash(truckTagId),const DeepCollectionEquality().hash(weight1),const DeepCollectionEquality().hash(weight2)]);

@override
String toString() {
  return 'Trip(name: $name, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, owner: $owner, docstatus: $docstatus, idx: $idx, userTags: $userTags, comments: $comments, assign: $assign, likedBy: $likedBy, containerNumber: $containerNumber, jobOrder: $jobOrder, jobRequest: $jobRequest, queue: $queue, weight: $weight, truck: $truck, tripCode: $tripCode, workflowState: $workflowState, driver: $driver, driverName: $driverName, driverMotherName: $driverMotherName, truckNumber: $truckNumber, cargoType: $cargoType, portName: $portName, berthName: $berthName, currentCheckPoint: $currentCheckPoint, currentProcedure: $currentProcedure, exitFromMiddleCustom: $exitFromMiddleCustom, containerNumberExport: $containerNumberExport, containerNumberReturn: $containerNumberReturn, berth: $berth, secondContainerNumberReturn: $secondContainerNumberReturn, seen: $seen, returnContainerSize: $returnContainerSize, transportationAgent: $transportationAgent, amendedFrom: $amendedFrom, isReturnOnly: $isReturnOnly, namingSeries: $namingSeries, isRefeer: $isRefeer, tripUuid: $tripUuid, uniqueIdentifierCustomsNumber: $uniqueIdentifierCustomsNumber, truckCity: $truckCity, containerSize: $containerSize, legalMainQueue: $legalMainQueue, legalYardQueue: $legalYardQueue, returnJobRequest: $returnJobRequest, returnJobRequestSecond: $returnJobRequestSecond, returnBerthName: $returnBerthName, linkedTransportationAgent: $linkedTransportationAgent, linkedBaseType: $linkedBaseType, transactional: $transactional, paid: $paid, customTruckNumber: $customTruckNumber, onlyReturnTrip: $onlyReturnTrip, excludeFromImport: $excludeFromImport, globalQueueNumber: $globalQueueNumber, berthQueueNumber: $berthQueueNumber, secondContainerNumber: $secondContainerNumber, secondContainer: $secondContainer, printingAgent: $printingAgent, truckTagId: $truckTagId, weight1: $weight1, weight2: $weight2)';
}


}

/// @nodoc
abstract mixin class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) _then) = __$TripCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, String? owner, int? docstatus, int? idx,@JsonKey(name: '_user_tags') dynamic userTags,@JsonKey(name: '_comments') dynamic comments,@JsonKey(name: '_assign') dynamic assign,@JsonKey(name: '_liked_by') dynamic likedBy,@JsonKey(name: 'container_number') dynamic containerNumber,@JsonKey(name: 'job_order') dynamic jobOrder,@JsonKey(name: 'job_request') String? jobRequest, dynamic queue, int? weight, String? truck,@JsonKey(name: 'trip_code') dynamic tripCode,@JsonKey(name: 'workflow_state') String? workflowState, String? driver,@JsonKey(name: 'driver_name') String? driverName,@JsonKey(name: 'driver_mother_name') String? driverMotherName,@JsonKey(name: 'truck_number') String? truckNumber,@JsonKey(name: 'cargo_type') String? cargoType,@JsonKey(name: 'port_name') String? portName,@JsonKey(name: 'berth_name') String? berthName,@JsonKey(name: 'current_check_point') dynamic currentCheckPoint,@JsonKey(name: 'current_procedure') dynamic currentProcedure,@JsonKey(name: 'exit_from_middle_custom') String? exitFromMiddleCustom,@JsonKey(name: 'container_number_export') dynamic containerNumberExport,@JsonKey(name: 'container_number_return') dynamic containerNumberReturn, String? berth,@JsonKey(name: 'second_container_number_return') dynamic secondContainerNumberReturn,@JsonKey(name: '_seen') String? seen,@JsonKey(name: 'return_container_size') String? returnContainerSize,@JsonKey(name: 'transportation_agent') String? transportationAgent,@JsonKey(name: 'amended_from') dynamic amendedFrom,@JsonKey(name: 'is_return_only') int? isReturnOnly,@JsonKey(name: 'naming_series') String? namingSeries,@JsonKey(name: 'is_refeer') int? isRefeer,@JsonKey(name: 'trip_uuid') String? tripUuid,@JsonKey(name: 'unique_identifier_customs_number') String? uniqueIdentifierCustomsNumber,@JsonKey(name: 'truck_city') String? truckCity,@JsonKey(name: 'container_size') String? containerSize,@JsonKey(name: 'legal_main_queue') int? legalMainQueue,@JsonKey(name: 'legal_yard_queue') int? legalYardQueue,@JsonKey(name: 'return_job_request') dynamic returnJobRequest,@JsonKey(name: 'return_job_request_second') dynamic returnJobRequestSecond,@JsonKey(name: 'return_berth_name') dynamic returnBerthName,@JsonKey(name: 'linked_transportation_agent') dynamic linkedTransportationAgent,@JsonKey(name: 'linked_base_type') dynamic linkedBaseType, String? transactional, int? paid,@JsonKey(name: 'custom_truck_number') dynamic customTruckNumber,@JsonKey(name: 'only_return_trip') int? onlyReturnTrip,@JsonKey(name: 'exclude_from_import') int? excludeFromImport,@JsonKey(name: 'global_queue_number') dynamic globalQueueNumber,@JsonKey(name: 'berth_queue_number') dynamic berthQueueNumber,@JsonKey(name: 'second_container_number') dynamic secondContainerNumber,@JsonKey(name: 'second_container') dynamic secondContainer,@PrintingAgentSerializer()@JsonKey(name: 'printing_agent') PrintingAgent? printingAgent,@JsonKey(name: 'truck_tag_id') dynamic truckTagId, dynamic weight1, dynamic weight2
});


@override $PrintingAgentCopyWith<$Res>? get printingAgent;

}
/// @nodoc
class __$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(this._self, this._then);

  final _Trip _self;
  final $Res Function(_Trip) _then;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? owner = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? userTags = freezed,Object? comments = freezed,Object? assign = freezed,Object? likedBy = freezed,Object? containerNumber = freezed,Object? jobOrder = freezed,Object? jobRequest = freezed,Object? queue = freezed,Object? weight = freezed,Object? truck = freezed,Object? tripCode = freezed,Object? workflowState = freezed,Object? driver = freezed,Object? driverName = freezed,Object? driverMotherName = freezed,Object? truckNumber = freezed,Object? cargoType = freezed,Object? portName = freezed,Object? berthName = freezed,Object? currentCheckPoint = freezed,Object? currentProcedure = freezed,Object? exitFromMiddleCustom = freezed,Object? containerNumberExport = freezed,Object? containerNumberReturn = freezed,Object? berth = freezed,Object? secondContainerNumberReturn = freezed,Object? seen = freezed,Object? returnContainerSize = freezed,Object? transportationAgent = freezed,Object? amendedFrom = freezed,Object? isReturnOnly = freezed,Object? namingSeries = freezed,Object? isRefeer = freezed,Object? tripUuid = freezed,Object? uniqueIdentifierCustomsNumber = freezed,Object? truckCity = freezed,Object? containerSize = freezed,Object? legalMainQueue = freezed,Object? legalYardQueue = freezed,Object? returnJobRequest = freezed,Object? returnJobRequestSecond = freezed,Object? returnBerthName = freezed,Object? linkedTransportationAgent = freezed,Object? linkedBaseType = freezed,Object? transactional = freezed,Object? paid = freezed,Object? customTruckNumber = freezed,Object? onlyReturnTrip = freezed,Object? excludeFromImport = freezed,Object? globalQueueNumber = freezed,Object? berthQueueNumber = freezed,Object? secondContainerNumber = freezed,Object? secondContainer = freezed,Object? printingAgent = freezed,Object? truckTagId = freezed,Object? weight1 = freezed,Object? weight2 = freezed,}) {
  return _then(_Trip(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,userTags: freezed == userTags ? _self.userTags : userTags // ignore: cast_nullable_to_non_nullable
as dynamic,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as dynamic,assign: freezed == assign ? _self.assign : assign // ignore: cast_nullable_to_non_nullable
as dynamic,likedBy: freezed == likedBy ? _self.likedBy : likedBy // ignore: cast_nullable_to_non_nullable
as dynamic,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,jobOrder: freezed == jobOrder ? _self.jobOrder : jobOrder // ignore: cast_nullable_to_non_nullable
as dynamic,jobRequest: freezed == jobRequest ? _self.jobRequest : jobRequest // ignore: cast_nullable_to_non_nullable
as String?,queue: freezed == queue ? _self.queue : queue // ignore: cast_nullable_to_non_nullable
as dynamic,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,tripCode: freezed == tripCode ? _self.tripCode : tripCode // ignore: cast_nullable_to_non_nullable
as dynamic,workflowState: freezed == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,driverName: freezed == driverName ? _self.driverName : driverName // ignore: cast_nullable_to_non_nullable
as String?,driverMotherName: freezed == driverMotherName ? _self.driverMotherName : driverMotherName // ignore: cast_nullable_to_non_nullable
as String?,truckNumber: freezed == truckNumber ? _self.truckNumber : truckNumber // ignore: cast_nullable_to_non_nullable
as String?,cargoType: freezed == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as String?,portName: freezed == portName ? _self.portName : portName // ignore: cast_nullable_to_non_nullable
as String?,berthName: freezed == berthName ? _self.berthName : berthName // ignore: cast_nullable_to_non_nullable
as String?,currentCheckPoint: freezed == currentCheckPoint ? _self.currentCheckPoint : currentCheckPoint // ignore: cast_nullable_to_non_nullable
as dynamic,currentProcedure: freezed == currentProcedure ? _self.currentProcedure : currentProcedure // ignore: cast_nullable_to_non_nullable
as dynamic,exitFromMiddleCustom: freezed == exitFromMiddleCustom ? _self.exitFromMiddleCustom : exitFromMiddleCustom // ignore: cast_nullable_to_non_nullable
as String?,containerNumberExport: freezed == containerNumberExport ? _self.containerNumberExport : containerNumberExport // ignore: cast_nullable_to_non_nullable
as dynamic,containerNumberReturn: freezed == containerNumberReturn ? _self.containerNumberReturn : containerNumberReturn // ignore: cast_nullable_to_non_nullable
as dynamic,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as String?,secondContainerNumberReturn: freezed == secondContainerNumberReturn ? _self.secondContainerNumberReturn : secondContainerNumberReturn // ignore: cast_nullable_to_non_nullable
as dynamic,seen: freezed == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as String?,returnContainerSize: freezed == returnContainerSize ? _self.returnContainerSize : returnContainerSize // ignore: cast_nullable_to_non_nullable
as String?,transportationAgent: freezed == transportationAgent ? _self.transportationAgent : transportationAgent // ignore: cast_nullable_to_non_nullable
as String?,amendedFrom: freezed == amendedFrom ? _self.amendedFrom : amendedFrom // ignore: cast_nullable_to_non_nullable
as dynamic,isReturnOnly: freezed == isReturnOnly ? _self.isReturnOnly : isReturnOnly // ignore: cast_nullable_to_non_nullable
as int?,namingSeries: freezed == namingSeries ? _self.namingSeries : namingSeries // ignore: cast_nullable_to_non_nullable
as String?,isRefeer: freezed == isRefeer ? _self.isRefeer : isRefeer // ignore: cast_nullable_to_non_nullable
as int?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,uniqueIdentifierCustomsNumber: freezed == uniqueIdentifierCustomsNumber ? _self.uniqueIdentifierCustomsNumber : uniqueIdentifierCustomsNumber // ignore: cast_nullable_to_non_nullable
as String?,truckCity: freezed == truckCity ? _self.truckCity : truckCity // ignore: cast_nullable_to_non_nullable
as String?,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as String?,legalMainQueue: freezed == legalMainQueue ? _self.legalMainQueue : legalMainQueue // ignore: cast_nullable_to_non_nullable
as int?,legalYardQueue: freezed == legalYardQueue ? _self.legalYardQueue : legalYardQueue // ignore: cast_nullable_to_non_nullable
as int?,returnJobRequest: freezed == returnJobRequest ? _self.returnJobRequest : returnJobRequest // ignore: cast_nullable_to_non_nullable
as dynamic,returnJobRequestSecond: freezed == returnJobRequestSecond ? _self.returnJobRequestSecond : returnJobRequestSecond // ignore: cast_nullable_to_non_nullable
as dynamic,returnBerthName: freezed == returnBerthName ? _self.returnBerthName : returnBerthName // ignore: cast_nullable_to_non_nullable
as dynamic,linkedTransportationAgent: freezed == linkedTransportationAgent ? _self.linkedTransportationAgent : linkedTransportationAgent // ignore: cast_nullable_to_non_nullable
as dynamic,linkedBaseType: freezed == linkedBaseType ? _self.linkedBaseType : linkedBaseType // ignore: cast_nullable_to_non_nullable
as dynamic,transactional: freezed == transactional ? _self.transactional : transactional // ignore: cast_nullable_to_non_nullable
as String?,paid: freezed == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int?,customTruckNumber: freezed == customTruckNumber ? _self.customTruckNumber : customTruckNumber // ignore: cast_nullable_to_non_nullable
as dynamic,onlyReturnTrip: freezed == onlyReturnTrip ? _self.onlyReturnTrip : onlyReturnTrip // ignore: cast_nullable_to_non_nullable
as int?,excludeFromImport: freezed == excludeFromImport ? _self.excludeFromImport : excludeFromImport // ignore: cast_nullable_to_non_nullable
as int?,globalQueueNumber: freezed == globalQueueNumber ? _self.globalQueueNumber : globalQueueNumber // ignore: cast_nullable_to_non_nullable
as dynamic,berthQueueNumber: freezed == berthQueueNumber ? _self.berthQueueNumber : berthQueueNumber // ignore: cast_nullable_to_non_nullable
as dynamic,secondContainerNumber: freezed == secondContainerNumber ? _self.secondContainerNumber : secondContainerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,secondContainer: freezed == secondContainer ? _self.secondContainer : secondContainer // ignore: cast_nullable_to_non_nullable
as dynamic,printingAgent: freezed == printingAgent ? _self.printingAgent : printingAgent // ignore: cast_nullable_to_non_nullable
as PrintingAgent?,truckTagId: freezed == truckTagId ? _self.truckTagId : truckTagId // ignore: cast_nullable_to_non_nullable
as dynamic,weight1: freezed == weight1 ? _self.weight1 : weight1 // ignore: cast_nullable_to_non_nullable
as dynamic,weight2: freezed == weight2 ? _self.weight2 : weight2 // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrintingAgentCopyWith<$Res>? get printingAgent {
    if (_self.printingAgent == null) {
    return null;
  }

  return $PrintingAgentCopyWith<$Res>(_self.printingAgent!, (value) {
    return _then(_self.copyWith(printingAgent: value));
  });
}
}

// dart format on
