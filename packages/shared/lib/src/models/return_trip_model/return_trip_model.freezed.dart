// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReturnTripModel {

 int? get id;@JsonKey(name: 'trip_name') String? get tripName;@JsonKey(name: 'trip_status') String? get tripStatus;@JsonKey(name: 'trip_uuid') String? get tripUuid;@JsonKey(name: 'return_job_request') String? get returnJobRequest;@JsonKey(name: 'return_job_request_second') dynamic get returnJobRequestSecond;@JsonKey(name: 'printing_agent') PrintingAgent? get printingAgent;@JsonKey(name: 'berth_id') int? get berthId;@JsonKey(name: 'transportation_agent') int? get transportationAgent;@JsonKey(name: 'container_number') String? get containerNumber;@JsonKey(name: 'container_size') String? get containerSize;@JsonKey(name: 'second_container_number') dynamic get secondContainerNumber;@JsonKey(name: 'second_container_size') dynamic get secondContainerSize; String? get driver; String? get truck;@JsonKey(name: 'taken_date') String? get takenDate;@JsonKey(name: 'return_date') String? get returnDate;@JsonKey(name: 'return_at') dynamic get returnAt;@JsonKey(name: 'is_paid') int? get isPaid;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'trip_id') dynamic get tripId;@JsonKey(name: 'workflow_state') dynamic get workflowState;@JsonKey(name: 'job_request') dynamic get jobRequest;@JsonKey(name: 'excludes_from_imports') dynamic get excludesFromImports; Berth? get berth;@JsonKey(name: 'truck_relation') TruckRelation? get truckRelation;
/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnTripModelCopyWith<ReturnTripModel> get copyWith => _$ReturnTripModelCopyWithImpl<ReturnTripModel>(this as ReturnTripModel, _$identity);

  /// Serializes this ReturnTripModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnTripModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.tripStatus, tripStatus) || other.tripStatus == tripStatus)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid)&&(identical(other.returnJobRequest, returnJobRequest) || other.returnJobRequest == returnJobRequest)&&const DeepCollectionEquality().equals(other.returnJobRequestSecond, returnJobRequestSecond)&&(identical(other.printingAgent, printingAgent) || other.printingAgent == printingAgent)&&(identical(other.berthId, berthId) || other.berthId == berthId)&&(identical(other.transportationAgent, transportationAgent) || other.transportationAgent == transportationAgent)&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&(identical(other.containerSize, containerSize) || other.containerSize == containerSize)&&const DeepCollectionEquality().equals(other.secondContainerNumber, secondContainerNumber)&&const DeepCollectionEquality().equals(other.secondContainerSize, secondContainerSize)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.takenDate, takenDate) || other.takenDate == takenDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&const DeepCollectionEquality().equals(other.returnAt, returnAt)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.tripId, tripId)&&const DeepCollectionEquality().equals(other.workflowState, workflowState)&&const DeepCollectionEquality().equals(other.jobRequest, jobRequest)&&const DeepCollectionEquality().equals(other.excludesFromImports, excludesFromImports)&&(identical(other.berth, berth) || other.berth == berth)&&(identical(other.truckRelation, truckRelation) || other.truckRelation == truckRelation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,tripName,tripStatus,tripUuid,returnJobRequest,const DeepCollectionEquality().hash(returnJobRequestSecond),printingAgent,berthId,transportationAgent,containerNumber,containerSize,const DeepCollectionEquality().hash(secondContainerNumber),const DeepCollectionEquality().hash(secondContainerSize),driver,truck,takenDate,returnDate,const DeepCollectionEquality().hash(returnAt),isPaid,createdAt,updatedAt,const DeepCollectionEquality().hash(tripId),const DeepCollectionEquality().hash(workflowState),const DeepCollectionEquality().hash(jobRequest),const DeepCollectionEquality().hash(excludesFromImports),berth,truckRelation]);

@override
String toString() {
  return 'ReturnTripModel(id: $id, tripName: $tripName, tripStatus: $tripStatus, tripUuid: $tripUuid, returnJobRequest: $returnJobRequest, returnJobRequestSecond: $returnJobRequestSecond, printingAgent: $printingAgent, berthId: $berthId, transportationAgent: $transportationAgent, containerNumber: $containerNumber, containerSize: $containerSize, secondContainerNumber: $secondContainerNumber, secondContainerSize: $secondContainerSize, driver: $driver, truck: $truck, takenDate: $takenDate, returnDate: $returnDate, returnAt: $returnAt, isPaid: $isPaid, createdAt: $createdAt, updatedAt: $updatedAt, tripId: $tripId, workflowState: $workflowState, jobRequest: $jobRequest, excludesFromImports: $excludesFromImports, berth: $berth, truckRelation: $truckRelation)';
}


}

/// @nodoc
abstract mixin class $ReturnTripModelCopyWith<$Res>  {
  factory $ReturnTripModelCopyWith(ReturnTripModel value, $Res Function(ReturnTripModel) _then) = _$ReturnTripModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'trip_name') String? tripName,@JsonKey(name: 'trip_status') String? tripStatus,@JsonKey(name: 'trip_uuid') String? tripUuid,@JsonKey(name: 'return_job_request') String? returnJobRequest,@JsonKey(name: 'return_job_request_second') dynamic returnJobRequestSecond,@JsonKey(name: 'printing_agent') PrintingAgent? printingAgent,@JsonKey(name: 'berth_id') int? berthId,@JsonKey(name: 'transportation_agent') int? transportationAgent,@JsonKey(name: 'container_number') String? containerNumber,@JsonKey(name: 'container_size') String? containerSize,@JsonKey(name: 'second_container_number') dynamic secondContainerNumber,@JsonKey(name: 'second_container_size') dynamic secondContainerSize, String? driver, String? truck,@JsonKey(name: 'taken_date') String? takenDate,@JsonKey(name: 'return_date') String? returnDate,@JsonKey(name: 'return_at') dynamic returnAt,@JsonKey(name: 'is_paid') int? isPaid,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'trip_id') dynamic tripId,@JsonKey(name: 'workflow_state') dynamic workflowState,@JsonKey(name: 'job_request') dynamic jobRequest,@JsonKey(name: 'excludes_from_imports') dynamic excludesFromImports, Berth? berth,@JsonKey(name: 'truck_relation') TruckRelation? truckRelation
});


$PrintingAgentCopyWith<$Res>? get printingAgent;$BerthCopyWith<$Res>? get berth;$TruckRelationCopyWith<$Res>? get truckRelation;

}
/// @nodoc
class _$ReturnTripModelCopyWithImpl<$Res>
    implements $ReturnTripModelCopyWith<$Res> {
  _$ReturnTripModelCopyWithImpl(this._self, this._then);

  final ReturnTripModel _self;
  final $Res Function(ReturnTripModel) _then;

/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? tripName = freezed,Object? tripStatus = freezed,Object? tripUuid = freezed,Object? returnJobRequest = freezed,Object? returnJobRequestSecond = freezed,Object? printingAgent = freezed,Object? berthId = freezed,Object? transportationAgent = freezed,Object? containerNumber = freezed,Object? containerSize = freezed,Object? secondContainerNumber = freezed,Object? secondContainerSize = freezed,Object? driver = freezed,Object? truck = freezed,Object? takenDate = freezed,Object? returnDate = freezed,Object? returnAt = freezed,Object? isPaid = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? tripId = freezed,Object? workflowState = freezed,Object? jobRequest = freezed,Object? excludesFromImports = freezed,Object? berth = freezed,Object? truckRelation = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,tripStatus: freezed == tripStatus ? _self.tripStatus : tripStatus // ignore: cast_nullable_to_non_nullable
as String?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,returnJobRequest: freezed == returnJobRequest ? _self.returnJobRequest : returnJobRequest // ignore: cast_nullable_to_non_nullable
as String?,returnJobRequestSecond: freezed == returnJobRequestSecond ? _self.returnJobRequestSecond : returnJobRequestSecond // ignore: cast_nullable_to_non_nullable
as dynamic,printingAgent: freezed == printingAgent ? _self.printingAgent : printingAgent // ignore: cast_nullable_to_non_nullable
as PrintingAgent?,berthId: freezed == berthId ? _self.berthId : berthId // ignore: cast_nullable_to_non_nullable
as int?,transportationAgent: freezed == transportationAgent ? _self.transportationAgent : transportationAgent // ignore: cast_nullable_to_non_nullable
as int?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as String?,secondContainerNumber: freezed == secondContainerNumber ? _self.secondContainerNumber : secondContainerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,secondContainerSize: freezed == secondContainerSize ? _self.secondContainerSize : secondContainerSize // ignore: cast_nullable_to_non_nullable
as dynamic,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,takenDate: freezed == takenDate ? _self.takenDate : takenDate // ignore: cast_nullable_to_non_nullable
as String?,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String?,returnAt: freezed == returnAt ? _self.returnAt : returnAt // ignore: cast_nullable_to_non_nullable
as dynamic,isPaid: freezed == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tripId: freezed == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as dynamic,workflowState: freezed == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as dynamic,jobRequest: freezed == jobRequest ? _self.jobRequest : jobRequest // ignore: cast_nullable_to_non_nullable
as dynamic,excludesFromImports: freezed == excludesFromImports ? _self.excludesFromImports : excludesFromImports // ignore: cast_nullable_to_non_nullable
as dynamic,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as Berth?,truckRelation: freezed == truckRelation ? _self.truckRelation : truckRelation // ignore: cast_nullable_to_non_nullable
as TruckRelation?,
  ));
}
/// Create a copy of ReturnTripModel
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
}/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BerthCopyWith<$Res>? get berth {
    if (_self.berth == null) {
    return null;
  }

  return $BerthCopyWith<$Res>(_self.berth!, (value) {
    return _then(_self.copyWith(berth: value));
  });
}/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TruckRelationCopyWith<$Res>? get truckRelation {
    if (_self.truckRelation == null) {
    return null;
  }

  return $TruckRelationCopyWith<$Res>(_self.truckRelation!, (value) {
    return _then(_self.copyWith(truckRelation: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReturnTripModel].
extension ReturnTripModelPatterns on ReturnTripModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnTripModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnTripModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnTripModel value)  $default,){
final _that = this;
switch (_that) {
case _ReturnTripModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnTripModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnTripModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'trip_name')  String? tripName, @JsonKey(name: 'trip_status')  String? tripStatus, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'return_job_request')  String? returnJobRequest, @JsonKey(name: 'return_job_request_second')  dynamic returnJobRequestSecond, @JsonKey(name: 'printing_agent')  PrintingAgent? printingAgent, @JsonKey(name: 'berth_id')  int? berthId, @JsonKey(name: 'transportation_agent')  int? transportationAgent, @JsonKey(name: 'container_number')  String? containerNumber, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'second_container_number')  dynamic secondContainerNumber, @JsonKey(name: 'second_container_size')  dynamic secondContainerSize,  String? driver,  String? truck, @JsonKey(name: 'taken_date')  String? takenDate, @JsonKey(name: 'return_date')  String? returnDate, @JsonKey(name: 'return_at')  dynamic returnAt, @JsonKey(name: 'is_paid')  int? isPaid, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'trip_id')  dynamic tripId, @JsonKey(name: 'workflow_state')  dynamic workflowState, @JsonKey(name: 'job_request')  dynamic jobRequest, @JsonKey(name: 'excludes_from_imports')  dynamic excludesFromImports,  Berth? berth, @JsonKey(name: 'truck_relation')  TruckRelation? truckRelation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnTripModel() when $default != null:
return $default(_that.id,_that.tripName,_that.tripStatus,_that.tripUuid,_that.returnJobRequest,_that.returnJobRequestSecond,_that.printingAgent,_that.berthId,_that.transportationAgent,_that.containerNumber,_that.containerSize,_that.secondContainerNumber,_that.secondContainerSize,_that.driver,_that.truck,_that.takenDate,_that.returnDate,_that.returnAt,_that.isPaid,_that.createdAt,_that.updatedAt,_that.tripId,_that.workflowState,_that.jobRequest,_that.excludesFromImports,_that.berth,_that.truckRelation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'trip_name')  String? tripName, @JsonKey(name: 'trip_status')  String? tripStatus, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'return_job_request')  String? returnJobRequest, @JsonKey(name: 'return_job_request_second')  dynamic returnJobRequestSecond, @JsonKey(name: 'printing_agent')  PrintingAgent? printingAgent, @JsonKey(name: 'berth_id')  int? berthId, @JsonKey(name: 'transportation_agent')  int? transportationAgent, @JsonKey(name: 'container_number')  String? containerNumber, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'second_container_number')  dynamic secondContainerNumber, @JsonKey(name: 'second_container_size')  dynamic secondContainerSize,  String? driver,  String? truck, @JsonKey(name: 'taken_date')  String? takenDate, @JsonKey(name: 'return_date')  String? returnDate, @JsonKey(name: 'return_at')  dynamic returnAt, @JsonKey(name: 'is_paid')  int? isPaid, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'trip_id')  dynamic tripId, @JsonKey(name: 'workflow_state')  dynamic workflowState, @JsonKey(name: 'job_request')  dynamic jobRequest, @JsonKey(name: 'excludes_from_imports')  dynamic excludesFromImports,  Berth? berth, @JsonKey(name: 'truck_relation')  TruckRelation? truckRelation)  $default,) {final _that = this;
switch (_that) {
case _ReturnTripModel():
return $default(_that.id,_that.tripName,_that.tripStatus,_that.tripUuid,_that.returnJobRequest,_that.returnJobRequestSecond,_that.printingAgent,_that.berthId,_that.transportationAgent,_that.containerNumber,_that.containerSize,_that.secondContainerNumber,_that.secondContainerSize,_that.driver,_that.truck,_that.takenDate,_that.returnDate,_that.returnAt,_that.isPaid,_that.createdAt,_that.updatedAt,_that.tripId,_that.workflowState,_that.jobRequest,_that.excludesFromImports,_that.berth,_that.truckRelation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'trip_name')  String? tripName, @JsonKey(name: 'trip_status')  String? tripStatus, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'return_job_request')  String? returnJobRequest, @JsonKey(name: 'return_job_request_second')  dynamic returnJobRequestSecond, @JsonKey(name: 'printing_agent')  PrintingAgent? printingAgent, @JsonKey(name: 'berth_id')  int? berthId, @JsonKey(name: 'transportation_agent')  int? transportationAgent, @JsonKey(name: 'container_number')  String? containerNumber, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'second_container_number')  dynamic secondContainerNumber, @JsonKey(name: 'second_container_size')  dynamic secondContainerSize,  String? driver,  String? truck, @JsonKey(name: 'taken_date')  String? takenDate, @JsonKey(name: 'return_date')  String? returnDate, @JsonKey(name: 'return_at')  dynamic returnAt, @JsonKey(name: 'is_paid')  int? isPaid, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'trip_id')  dynamic tripId, @JsonKey(name: 'workflow_state')  dynamic workflowState, @JsonKey(name: 'job_request')  dynamic jobRequest, @JsonKey(name: 'excludes_from_imports')  dynamic excludesFromImports,  Berth? berth, @JsonKey(name: 'truck_relation')  TruckRelation? truckRelation)?  $default,) {final _that = this;
switch (_that) {
case _ReturnTripModel() when $default != null:
return $default(_that.id,_that.tripName,_that.tripStatus,_that.tripUuid,_that.returnJobRequest,_that.returnJobRequestSecond,_that.printingAgent,_that.berthId,_that.transportationAgent,_that.containerNumber,_that.containerSize,_that.secondContainerNumber,_that.secondContainerSize,_that.driver,_that.truck,_that.takenDate,_that.returnDate,_that.returnAt,_that.isPaid,_that.createdAt,_that.updatedAt,_that.tripId,_that.workflowState,_that.jobRequest,_that.excludesFromImports,_that.berth,_that.truckRelation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReturnTripModel implements ReturnTripModel {
   _ReturnTripModel({this.id, @JsonKey(name: 'trip_name') this.tripName, @JsonKey(name: 'trip_status') this.tripStatus, @JsonKey(name: 'trip_uuid') this.tripUuid, @JsonKey(name: 'return_job_request') this.returnJobRequest, @JsonKey(name: 'return_job_request_second') this.returnJobRequestSecond, @JsonKey(name: 'printing_agent') this.printingAgent, @JsonKey(name: 'berth_id') this.berthId, @JsonKey(name: 'transportation_agent') this.transportationAgent, @JsonKey(name: 'container_number') this.containerNumber, @JsonKey(name: 'container_size') this.containerSize, @JsonKey(name: 'second_container_number') this.secondContainerNumber, @JsonKey(name: 'second_container_size') this.secondContainerSize, this.driver, this.truck, @JsonKey(name: 'taken_date') this.takenDate, @JsonKey(name: 'return_date') this.returnDate, @JsonKey(name: 'return_at') this.returnAt, @JsonKey(name: 'is_paid') this.isPaid, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'trip_id') this.tripId, @JsonKey(name: 'workflow_state') this.workflowState, @JsonKey(name: 'job_request') this.jobRequest, @JsonKey(name: 'excludes_from_imports') this.excludesFromImports, this.berth, @JsonKey(name: 'truck_relation') this.truckRelation});
  factory _ReturnTripModel.fromJson(Map<String, dynamic> json) => _$ReturnTripModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'trip_name') final  String? tripName;
@override@JsonKey(name: 'trip_status') final  String? tripStatus;
@override@JsonKey(name: 'trip_uuid') final  String? tripUuid;
@override@JsonKey(name: 'return_job_request') final  String? returnJobRequest;
@override@JsonKey(name: 'return_job_request_second') final  dynamic returnJobRequestSecond;
@override@JsonKey(name: 'printing_agent') final  PrintingAgent? printingAgent;
@override@JsonKey(name: 'berth_id') final  int? berthId;
@override@JsonKey(name: 'transportation_agent') final  int? transportationAgent;
@override@JsonKey(name: 'container_number') final  String? containerNumber;
@override@JsonKey(name: 'container_size') final  String? containerSize;
@override@JsonKey(name: 'second_container_number') final  dynamic secondContainerNumber;
@override@JsonKey(name: 'second_container_size') final  dynamic secondContainerSize;
@override final  String? driver;
@override final  String? truck;
@override@JsonKey(name: 'taken_date') final  String? takenDate;
@override@JsonKey(name: 'return_date') final  String? returnDate;
@override@JsonKey(name: 'return_at') final  dynamic returnAt;
@override@JsonKey(name: 'is_paid') final  int? isPaid;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'trip_id') final  dynamic tripId;
@override@JsonKey(name: 'workflow_state') final  dynamic workflowState;
@override@JsonKey(name: 'job_request') final  dynamic jobRequest;
@override@JsonKey(name: 'excludes_from_imports') final  dynamic excludesFromImports;
@override final  Berth? berth;
@override@JsonKey(name: 'truck_relation') final  TruckRelation? truckRelation;

/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnTripModelCopyWith<_ReturnTripModel> get copyWith => __$ReturnTripModelCopyWithImpl<_ReturnTripModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReturnTripModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnTripModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.tripStatus, tripStatus) || other.tripStatus == tripStatus)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid)&&(identical(other.returnJobRequest, returnJobRequest) || other.returnJobRequest == returnJobRequest)&&const DeepCollectionEquality().equals(other.returnJobRequestSecond, returnJobRequestSecond)&&(identical(other.printingAgent, printingAgent) || other.printingAgent == printingAgent)&&(identical(other.berthId, berthId) || other.berthId == berthId)&&(identical(other.transportationAgent, transportationAgent) || other.transportationAgent == transportationAgent)&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&(identical(other.containerSize, containerSize) || other.containerSize == containerSize)&&const DeepCollectionEquality().equals(other.secondContainerNumber, secondContainerNumber)&&const DeepCollectionEquality().equals(other.secondContainerSize, secondContainerSize)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.takenDate, takenDate) || other.takenDate == takenDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&const DeepCollectionEquality().equals(other.returnAt, returnAt)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.tripId, tripId)&&const DeepCollectionEquality().equals(other.workflowState, workflowState)&&const DeepCollectionEquality().equals(other.jobRequest, jobRequest)&&const DeepCollectionEquality().equals(other.excludesFromImports, excludesFromImports)&&(identical(other.berth, berth) || other.berth == berth)&&(identical(other.truckRelation, truckRelation) || other.truckRelation == truckRelation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,tripName,tripStatus,tripUuid,returnJobRequest,const DeepCollectionEquality().hash(returnJobRequestSecond),printingAgent,berthId,transportationAgent,containerNumber,containerSize,const DeepCollectionEquality().hash(secondContainerNumber),const DeepCollectionEquality().hash(secondContainerSize),driver,truck,takenDate,returnDate,const DeepCollectionEquality().hash(returnAt),isPaid,createdAt,updatedAt,const DeepCollectionEquality().hash(tripId),const DeepCollectionEquality().hash(workflowState),const DeepCollectionEquality().hash(jobRequest),const DeepCollectionEquality().hash(excludesFromImports),berth,truckRelation]);

@override
String toString() {
  return 'ReturnTripModel(id: $id, tripName: $tripName, tripStatus: $tripStatus, tripUuid: $tripUuid, returnJobRequest: $returnJobRequest, returnJobRequestSecond: $returnJobRequestSecond, printingAgent: $printingAgent, berthId: $berthId, transportationAgent: $transportationAgent, containerNumber: $containerNumber, containerSize: $containerSize, secondContainerNumber: $secondContainerNumber, secondContainerSize: $secondContainerSize, driver: $driver, truck: $truck, takenDate: $takenDate, returnDate: $returnDate, returnAt: $returnAt, isPaid: $isPaid, createdAt: $createdAt, updatedAt: $updatedAt, tripId: $tripId, workflowState: $workflowState, jobRequest: $jobRequest, excludesFromImports: $excludesFromImports, berth: $berth, truckRelation: $truckRelation)';
}


}

/// @nodoc
abstract mixin class _$ReturnTripModelCopyWith<$Res> implements $ReturnTripModelCopyWith<$Res> {
  factory _$ReturnTripModelCopyWith(_ReturnTripModel value, $Res Function(_ReturnTripModel) _then) = __$ReturnTripModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'trip_name') String? tripName,@JsonKey(name: 'trip_status') String? tripStatus,@JsonKey(name: 'trip_uuid') String? tripUuid,@JsonKey(name: 'return_job_request') String? returnJobRequest,@JsonKey(name: 'return_job_request_second') dynamic returnJobRequestSecond,@JsonKey(name: 'printing_agent') PrintingAgent? printingAgent,@JsonKey(name: 'berth_id') int? berthId,@JsonKey(name: 'transportation_agent') int? transportationAgent,@JsonKey(name: 'container_number') String? containerNumber,@JsonKey(name: 'container_size') String? containerSize,@JsonKey(name: 'second_container_number') dynamic secondContainerNumber,@JsonKey(name: 'second_container_size') dynamic secondContainerSize, String? driver, String? truck,@JsonKey(name: 'taken_date') String? takenDate,@JsonKey(name: 'return_date') String? returnDate,@JsonKey(name: 'return_at') dynamic returnAt,@JsonKey(name: 'is_paid') int? isPaid,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'trip_id') dynamic tripId,@JsonKey(name: 'workflow_state') dynamic workflowState,@JsonKey(name: 'job_request') dynamic jobRequest,@JsonKey(name: 'excludes_from_imports') dynamic excludesFromImports, Berth? berth,@JsonKey(name: 'truck_relation') TruckRelation? truckRelation
});


@override $PrintingAgentCopyWith<$Res>? get printingAgent;@override $BerthCopyWith<$Res>? get berth;@override $TruckRelationCopyWith<$Res>? get truckRelation;

}
/// @nodoc
class __$ReturnTripModelCopyWithImpl<$Res>
    implements _$ReturnTripModelCopyWith<$Res> {
  __$ReturnTripModelCopyWithImpl(this._self, this._then);

  final _ReturnTripModel _self;
  final $Res Function(_ReturnTripModel) _then;

/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? tripName = freezed,Object? tripStatus = freezed,Object? tripUuid = freezed,Object? returnJobRequest = freezed,Object? returnJobRequestSecond = freezed,Object? printingAgent = freezed,Object? berthId = freezed,Object? transportationAgent = freezed,Object? containerNumber = freezed,Object? containerSize = freezed,Object? secondContainerNumber = freezed,Object? secondContainerSize = freezed,Object? driver = freezed,Object? truck = freezed,Object? takenDate = freezed,Object? returnDate = freezed,Object? returnAt = freezed,Object? isPaid = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? tripId = freezed,Object? workflowState = freezed,Object? jobRequest = freezed,Object? excludesFromImports = freezed,Object? berth = freezed,Object? truckRelation = freezed,}) {
  return _then(_ReturnTripModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,tripStatus: freezed == tripStatus ? _self.tripStatus : tripStatus // ignore: cast_nullable_to_non_nullable
as String?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,returnJobRequest: freezed == returnJobRequest ? _self.returnJobRequest : returnJobRequest // ignore: cast_nullable_to_non_nullable
as String?,returnJobRequestSecond: freezed == returnJobRequestSecond ? _self.returnJobRequestSecond : returnJobRequestSecond // ignore: cast_nullable_to_non_nullable
as dynamic,printingAgent: freezed == printingAgent ? _self.printingAgent : printingAgent // ignore: cast_nullable_to_non_nullable
as PrintingAgent?,berthId: freezed == berthId ? _self.berthId : berthId // ignore: cast_nullable_to_non_nullable
as int?,transportationAgent: freezed == transportationAgent ? _self.transportationAgent : transportationAgent // ignore: cast_nullable_to_non_nullable
as int?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as String?,secondContainerNumber: freezed == secondContainerNumber ? _self.secondContainerNumber : secondContainerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,secondContainerSize: freezed == secondContainerSize ? _self.secondContainerSize : secondContainerSize // ignore: cast_nullable_to_non_nullable
as dynamic,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,takenDate: freezed == takenDate ? _self.takenDate : takenDate // ignore: cast_nullable_to_non_nullable
as String?,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String?,returnAt: freezed == returnAt ? _self.returnAt : returnAt // ignore: cast_nullable_to_non_nullable
as dynamic,isPaid: freezed == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tripId: freezed == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as dynamic,workflowState: freezed == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as dynamic,jobRequest: freezed == jobRequest ? _self.jobRequest : jobRequest // ignore: cast_nullable_to_non_nullable
as dynamic,excludesFromImports: freezed == excludesFromImports ? _self.excludesFromImports : excludesFromImports // ignore: cast_nullable_to_non_nullable
as dynamic,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as Berth?,truckRelation: freezed == truckRelation ? _self.truckRelation : truckRelation // ignore: cast_nullable_to_non_nullable
as TruckRelation?,
  ));
}

/// Create a copy of ReturnTripModel
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
}/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BerthCopyWith<$Res>? get berth {
    if (_self.berth == null) {
    return null;
  }

  return $BerthCopyWith<$Res>(_self.berth!, (value) {
    return _then(_self.copyWith(berth: value));
  });
}/// Create a copy of ReturnTripModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TruckRelationCopyWith<$Res>? get truckRelation {
    if (_self.truckRelation == null) {
    return null;
  }

  return $TruckRelationCopyWith<$Res>(_self.truckRelation!, (value) {
    return _then(_self.copyWith(truckRelation: value));
  });
}
}

// dart format on
