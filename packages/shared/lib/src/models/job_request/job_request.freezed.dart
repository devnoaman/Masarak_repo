// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobRequest {

 String? get name;@JsonKey(name: 'order_number') String? get orderNumber;@JsonKey(name: 'clearance_agent') String? get clearanceAgent; String? get operation;@JsonKey(name: 'is_connected') int? get isConnected;@JsonKey(name: 'import_type') String? get importType;@JsonKey(name: 'number_of_truck_for_import') int? get numberOfTruckForImport;@JsonKey(name: 'export_type') String? get exportType;@JsonKey(name: 'number_of_trucks_for_export') int? get numberOfTrucksForExport;@JsonKey(name: 'number_of_truck_roro') dynamic get numberOfTruckRoro;@JsonKey(name: 'ship__voyage_number') String? get shipVoyageNumber; String? get status; String? get creation;@JsonKey(name: 'allow_merge') bool? get allowMerge;@JsonKey(name: 'arabic_berth') String? get arabicBerth;@JsonKey(name: 'manifest_doc') ManifestDoc? get manifestDoc;@JsonKey(name: 'connected_trips') List<ConnectedTrip>? get connectedTrips;@JsonKey(name: 'canceled_trips') List<CanceledTrip>? get canceledTrips;@JsonKey(name: 'container_list') List<ContainerList>? get containerList;@JsonKey(name: 'cargo_items') List<dynamic>? get cargoItems;
/// Create a copy of JobRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobRequestCopyWith<JobRequest> get copyWith => _$JobRequestCopyWithImpl<JobRequest>(this as JobRequest, _$identity);

  /// Serializes this JobRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.clearanceAgent, clearanceAgent) || other.clearanceAgent == clearanceAgent)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected)&&(identical(other.importType, importType) || other.importType == importType)&&(identical(other.numberOfTruckForImport, numberOfTruckForImport) || other.numberOfTruckForImport == numberOfTruckForImport)&&(identical(other.exportType, exportType) || other.exportType == exportType)&&(identical(other.numberOfTrucksForExport, numberOfTrucksForExport) || other.numberOfTrucksForExport == numberOfTrucksForExport)&&const DeepCollectionEquality().equals(other.numberOfTruckRoro, numberOfTruckRoro)&&(identical(other.shipVoyageNumber, shipVoyageNumber) || other.shipVoyageNumber == shipVoyageNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.allowMerge, allowMerge) || other.allowMerge == allowMerge)&&(identical(other.arabicBerth, arabicBerth) || other.arabicBerth == arabicBerth)&&(identical(other.manifestDoc, manifestDoc) || other.manifestDoc == manifestDoc)&&const DeepCollectionEquality().equals(other.connectedTrips, connectedTrips)&&const DeepCollectionEquality().equals(other.canceledTrips, canceledTrips)&&const DeepCollectionEquality().equals(other.containerList, containerList)&&const DeepCollectionEquality().equals(other.cargoItems, cargoItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,orderNumber,clearanceAgent,operation,isConnected,importType,numberOfTruckForImport,exportType,numberOfTrucksForExport,const DeepCollectionEquality().hash(numberOfTruckRoro),shipVoyageNumber,status,creation,allowMerge,arabicBerth,manifestDoc,const DeepCollectionEquality().hash(connectedTrips),const DeepCollectionEquality().hash(canceledTrips),const DeepCollectionEquality().hash(containerList),const DeepCollectionEquality().hash(cargoItems)]);

@override
String toString() {
  return 'JobRequest(name: $name, orderNumber: $orderNumber, clearanceAgent: $clearanceAgent, operation: $operation, isConnected: $isConnected, importType: $importType, numberOfTruckForImport: $numberOfTruckForImport, exportType: $exportType, numberOfTrucksForExport: $numberOfTrucksForExport, numberOfTruckRoro: $numberOfTruckRoro, shipVoyageNumber: $shipVoyageNumber, status: $status, creation: $creation, allowMerge: $allowMerge, arabicBerth: $arabicBerth, manifestDoc: $manifestDoc, connectedTrips: $connectedTrips, canceledTrips: $canceledTrips, containerList: $containerList, cargoItems: $cargoItems)';
}


}

/// @nodoc
abstract mixin class $JobRequestCopyWith<$Res>  {
  factory $JobRequestCopyWith(JobRequest value, $Res Function(JobRequest) _then) = _$JobRequestCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'clearance_agent') String? clearanceAgent, String? operation,@JsonKey(name: 'is_connected') int? isConnected,@JsonKey(name: 'import_type') String? importType,@JsonKey(name: 'number_of_truck_for_import') int? numberOfTruckForImport,@JsonKey(name: 'export_type') String? exportType,@JsonKey(name: 'number_of_trucks_for_export') int? numberOfTrucksForExport,@JsonKey(name: 'number_of_truck_roro') dynamic numberOfTruckRoro,@JsonKey(name: 'ship__voyage_number') String? shipVoyageNumber, String? status, String? creation,@JsonKey(name: 'allow_merge') bool? allowMerge,@JsonKey(name: 'arabic_berth') String? arabicBerth,@JsonKey(name: 'manifest_doc') ManifestDoc? manifestDoc,@JsonKey(name: 'connected_trips') List<ConnectedTrip>? connectedTrips,@JsonKey(name: 'canceled_trips') List<CanceledTrip>? canceledTrips,@JsonKey(name: 'container_list') List<ContainerList>? containerList,@JsonKey(name: 'cargo_items') List<dynamic>? cargoItems
});


$ManifestDocCopyWith<$Res>? get manifestDoc;

}
/// @nodoc
class _$JobRequestCopyWithImpl<$Res>
    implements $JobRequestCopyWith<$Res> {
  _$JobRequestCopyWithImpl(this._self, this._then);

  final JobRequest _self;
  final $Res Function(JobRequest) _then;

/// Create a copy of JobRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? orderNumber = freezed,Object? clearanceAgent = freezed,Object? operation = freezed,Object? isConnected = freezed,Object? importType = freezed,Object? numberOfTruckForImport = freezed,Object? exportType = freezed,Object? numberOfTrucksForExport = freezed,Object? numberOfTruckRoro = freezed,Object? shipVoyageNumber = freezed,Object? status = freezed,Object? creation = freezed,Object? allowMerge = freezed,Object? arabicBerth = freezed,Object? manifestDoc = freezed,Object? connectedTrips = freezed,Object? canceledTrips = freezed,Object? containerList = freezed,Object? cargoItems = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,clearanceAgent: freezed == clearanceAgent ? _self.clearanceAgent : clearanceAgent // ignore: cast_nullable_to_non_nullable
as String?,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as String?,isConnected: freezed == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as int?,importType: freezed == importType ? _self.importType : importType // ignore: cast_nullable_to_non_nullable
as String?,numberOfTruckForImport: freezed == numberOfTruckForImport ? _self.numberOfTruckForImport : numberOfTruckForImport // ignore: cast_nullable_to_non_nullable
as int?,exportType: freezed == exportType ? _self.exportType : exportType // ignore: cast_nullable_to_non_nullable
as String?,numberOfTrucksForExport: freezed == numberOfTrucksForExport ? _self.numberOfTrucksForExport : numberOfTrucksForExport // ignore: cast_nullable_to_non_nullable
as int?,numberOfTruckRoro: freezed == numberOfTruckRoro ? _self.numberOfTruckRoro : numberOfTruckRoro // ignore: cast_nullable_to_non_nullable
as dynamic,shipVoyageNumber: freezed == shipVoyageNumber ? _self.shipVoyageNumber : shipVoyageNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,allowMerge: freezed == allowMerge ? _self.allowMerge : allowMerge // ignore: cast_nullable_to_non_nullable
as bool?,arabicBerth: freezed == arabicBerth ? _self.arabicBerth : arabicBerth // ignore: cast_nullable_to_non_nullable
as String?,manifestDoc: freezed == manifestDoc ? _self.manifestDoc : manifestDoc // ignore: cast_nullable_to_non_nullable
as ManifestDoc?,connectedTrips: freezed == connectedTrips ? _self.connectedTrips : connectedTrips // ignore: cast_nullable_to_non_nullable
as List<ConnectedTrip>?,canceledTrips: freezed == canceledTrips ? _self.canceledTrips : canceledTrips // ignore: cast_nullable_to_non_nullable
as List<CanceledTrip>?,containerList: freezed == containerList ? _self.containerList : containerList // ignore: cast_nullable_to_non_nullable
as List<ContainerList>?,cargoItems: freezed == cargoItems ? _self.cargoItems : cargoItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of JobRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ManifestDocCopyWith<$Res>? get manifestDoc {
    if (_self.manifestDoc == null) {
    return null;
  }

  return $ManifestDocCopyWith<$Res>(_self.manifestDoc!, (value) {
    return _then(_self.copyWith(manifestDoc: value));
  });
}
}


/// Adds pattern-matching-related methods to [JobRequest].
extension JobRequestPatterns on JobRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobRequest value)  $default,){
final _that = this;
switch (_that) {
case _JobRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobRequest value)?  $default,){
final _that = this;
switch (_that) {
case _JobRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'clearance_agent')  String? clearanceAgent,  String? operation, @JsonKey(name: 'is_connected')  int? isConnected, @JsonKey(name: 'import_type')  String? importType, @JsonKey(name: 'number_of_truck_for_import')  int? numberOfTruckForImport, @JsonKey(name: 'export_type')  String? exportType, @JsonKey(name: 'number_of_trucks_for_export')  int? numberOfTrucksForExport, @JsonKey(name: 'number_of_truck_roro')  dynamic numberOfTruckRoro, @JsonKey(name: 'ship__voyage_number')  String? shipVoyageNumber,  String? status,  String? creation, @JsonKey(name: 'allow_merge')  bool? allowMerge, @JsonKey(name: 'arabic_berth')  String? arabicBerth, @JsonKey(name: 'manifest_doc')  ManifestDoc? manifestDoc, @JsonKey(name: 'connected_trips')  List<ConnectedTrip>? connectedTrips, @JsonKey(name: 'canceled_trips')  List<CanceledTrip>? canceledTrips, @JsonKey(name: 'container_list')  List<ContainerList>? containerList, @JsonKey(name: 'cargo_items')  List<dynamic>? cargoItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobRequest() when $default != null:
return $default(_that.name,_that.orderNumber,_that.clearanceAgent,_that.operation,_that.isConnected,_that.importType,_that.numberOfTruckForImport,_that.exportType,_that.numberOfTrucksForExport,_that.numberOfTruckRoro,_that.shipVoyageNumber,_that.status,_that.creation,_that.allowMerge,_that.arabicBerth,_that.manifestDoc,_that.connectedTrips,_that.canceledTrips,_that.containerList,_that.cargoItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'clearance_agent')  String? clearanceAgent,  String? operation, @JsonKey(name: 'is_connected')  int? isConnected, @JsonKey(name: 'import_type')  String? importType, @JsonKey(name: 'number_of_truck_for_import')  int? numberOfTruckForImport, @JsonKey(name: 'export_type')  String? exportType, @JsonKey(name: 'number_of_trucks_for_export')  int? numberOfTrucksForExport, @JsonKey(name: 'number_of_truck_roro')  dynamic numberOfTruckRoro, @JsonKey(name: 'ship__voyage_number')  String? shipVoyageNumber,  String? status,  String? creation, @JsonKey(name: 'allow_merge')  bool? allowMerge, @JsonKey(name: 'arabic_berth')  String? arabicBerth, @JsonKey(name: 'manifest_doc')  ManifestDoc? manifestDoc, @JsonKey(name: 'connected_trips')  List<ConnectedTrip>? connectedTrips, @JsonKey(name: 'canceled_trips')  List<CanceledTrip>? canceledTrips, @JsonKey(name: 'container_list')  List<ContainerList>? containerList, @JsonKey(name: 'cargo_items')  List<dynamic>? cargoItems)  $default,) {final _that = this;
switch (_that) {
case _JobRequest():
return $default(_that.name,_that.orderNumber,_that.clearanceAgent,_that.operation,_that.isConnected,_that.importType,_that.numberOfTruckForImport,_that.exportType,_that.numberOfTrucksForExport,_that.numberOfTruckRoro,_that.shipVoyageNumber,_that.status,_that.creation,_that.allowMerge,_that.arabicBerth,_that.manifestDoc,_that.connectedTrips,_that.canceledTrips,_that.containerList,_that.cargoItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'clearance_agent')  String? clearanceAgent,  String? operation, @JsonKey(name: 'is_connected')  int? isConnected, @JsonKey(name: 'import_type')  String? importType, @JsonKey(name: 'number_of_truck_for_import')  int? numberOfTruckForImport, @JsonKey(name: 'export_type')  String? exportType, @JsonKey(name: 'number_of_trucks_for_export')  int? numberOfTrucksForExport, @JsonKey(name: 'number_of_truck_roro')  dynamic numberOfTruckRoro, @JsonKey(name: 'ship__voyage_number')  String? shipVoyageNumber,  String? status,  String? creation, @JsonKey(name: 'allow_merge')  bool? allowMerge, @JsonKey(name: 'arabic_berth')  String? arabicBerth, @JsonKey(name: 'manifest_doc')  ManifestDoc? manifestDoc, @JsonKey(name: 'connected_trips')  List<ConnectedTrip>? connectedTrips, @JsonKey(name: 'canceled_trips')  List<CanceledTrip>? canceledTrips, @JsonKey(name: 'container_list')  List<ContainerList>? containerList, @JsonKey(name: 'cargo_items')  List<dynamic>? cargoItems)?  $default,) {final _that = this;
switch (_that) {
case _JobRequest() when $default != null:
return $default(_that.name,_that.orderNumber,_that.clearanceAgent,_that.operation,_that.isConnected,_that.importType,_that.numberOfTruckForImport,_that.exportType,_that.numberOfTrucksForExport,_that.numberOfTruckRoro,_that.shipVoyageNumber,_that.status,_that.creation,_that.allowMerge,_that.arabicBerth,_that.manifestDoc,_that.connectedTrips,_that.canceledTrips,_that.containerList,_that.cargoItems);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobRequest implements JobRequest {
   _JobRequest({this.name, @JsonKey(name: 'order_number') this.orderNumber, @JsonKey(name: 'clearance_agent') this.clearanceAgent, this.operation, @JsonKey(name: 'is_connected') this.isConnected, @JsonKey(name: 'import_type') this.importType, @JsonKey(name: 'number_of_truck_for_import') this.numberOfTruckForImport, @JsonKey(name: 'export_type') this.exportType, @JsonKey(name: 'number_of_trucks_for_export') this.numberOfTrucksForExport, @JsonKey(name: 'number_of_truck_roro') this.numberOfTruckRoro, @JsonKey(name: 'ship__voyage_number') this.shipVoyageNumber, this.status, this.creation, @JsonKey(name: 'allow_merge') this.allowMerge, @JsonKey(name: 'arabic_berth') this.arabicBerth, @JsonKey(name: 'manifest_doc') this.manifestDoc, @JsonKey(name: 'connected_trips') final  List<ConnectedTrip>? connectedTrips, @JsonKey(name: 'canceled_trips') final  List<CanceledTrip>? canceledTrips, @JsonKey(name: 'container_list') final  List<ContainerList>? containerList, @JsonKey(name: 'cargo_items') final  List<dynamic>? cargoItems}): _connectedTrips = connectedTrips,_canceledTrips = canceledTrips,_containerList = containerList,_cargoItems = cargoItems;
  factory _JobRequest.fromJson(Map<String, dynamic> json) => _$JobRequestFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'order_number') final  String? orderNumber;
@override@JsonKey(name: 'clearance_agent') final  String? clearanceAgent;
@override final  String? operation;
@override@JsonKey(name: 'is_connected') final  int? isConnected;
@override@JsonKey(name: 'import_type') final  String? importType;
@override@JsonKey(name: 'number_of_truck_for_import') final  int? numberOfTruckForImport;
@override@JsonKey(name: 'export_type') final  String? exportType;
@override@JsonKey(name: 'number_of_trucks_for_export') final  int? numberOfTrucksForExport;
@override@JsonKey(name: 'number_of_truck_roro') final  dynamic numberOfTruckRoro;
@override@JsonKey(name: 'ship__voyage_number') final  String? shipVoyageNumber;
@override final  String? status;
@override final  String? creation;
@override@JsonKey(name: 'allow_merge') final  bool? allowMerge;
@override@JsonKey(name: 'arabic_berth') final  String? arabicBerth;
@override@JsonKey(name: 'manifest_doc') final  ManifestDoc? manifestDoc;
 final  List<ConnectedTrip>? _connectedTrips;
@override@JsonKey(name: 'connected_trips') List<ConnectedTrip>? get connectedTrips {
  final value = _connectedTrips;
  if (value == null) return null;
  if (_connectedTrips is EqualUnmodifiableListView) return _connectedTrips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CanceledTrip>? _canceledTrips;
@override@JsonKey(name: 'canceled_trips') List<CanceledTrip>? get canceledTrips {
  final value = _canceledTrips;
  if (value == null) return null;
  if (_canceledTrips is EqualUnmodifiableListView) return _canceledTrips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ContainerList>? _containerList;
@override@JsonKey(name: 'container_list') List<ContainerList>? get containerList {
  final value = _containerList;
  if (value == null) return null;
  if (_containerList is EqualUnmodifiableListView) return _containerList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cargoItems;
@override@JsonKey(name: 'cargo_items') List<dynamic>? get cargoItems {
  final value = _cargoItems;
  if (value == null) return null;
  if (_cargoItems is EqualUnmodifiableListView) return _cargoItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of JobRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobRequestCopyWith<_JobRequest> get copyWith => __$JobRequestCopyWithImpl<_JobRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.clearanceAgent, clearanceAgent) || other.clearanceAgent == clearanceAgent)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected)&&(identical(other.importType, importType) || other.importType == importType)&&(identical(other.numberOfTruckForImport, numberOfTruckForImport) || other.numberOfTruckForImport == numberOfTruckForImport)&&(identical(other.exportType, exportType) || other.exportType == exportType)&&(identical(other.numberOfTrucksForExport, numberOfTrucksForExport) || other.numberOfTrucksForExport == numberOfTrucksForExport)&&const DeepCollectionEquality().equals(other.numberOfTruckRoro, numberOfTruckRoro)&&(identical(other.shipVoyageNumber, shipVoyageNumber) || other.shipVoyageNumber == shipVoyageNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.allowMerge, allowMerge) || other.allowMerge == allowMerge)&&(identical(other.arabicBerth, arabicBerth) || other.arabicBerth == arabicBerth)&&(identical(other.manifestDoc, manifestDoc) || other.manifestDoc == manifestDoc)&&const DeepCollectionEquality().equals(other._connectedTrips, _connectedTrips)&&const DeepCollectionEquality().equals(other._canceledTrips, _canceledTrips)&&const DeepCollectionEquality().equals(other._containerList, _containerList)&&const DeepCollectionEquality().equals(other._cargoItems, _cargoItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,orderNumber,clearanceAgent,operation,isConnected,importType,numberOfTruckForImport,exportType,numberOfTrucksForExport,const DeepCollectionEquality().hash(numberOfTruckRoro),shipVoyageNumber,status,creation,allowMerge,arabicBerth,manifestDoc,const DeepCollectionEquality().hash(_connectedTrips),const DeepCollectionEquality().hash(_canceledTrips),const DeepCollectionEquality().hash(_containerList),const DeepCollectionEquality().hash(_cargoItems)]);

@override
String toString() {
  return 'JobRequest(name: $name, orderNumber: $orderNumber, clearanceAgent: $clearanceAgent, operation: $operation, isConnected: $isConnected, importType: $importType, numberOfTruckForImport: $numberOfTruckForImport, exportType: $exportType, numberOfTrucksForExport: $numberOfTrucksForExport, numberOfTruckRoro: $numberOfTruckRoro, shipVoyageNumber: $shipVoyageNumber, status: $status, creation: $creation, allowMerge: $allowMerge, arabicBerth: $arabicBerth, manifestDoc: $manifestDoc, connectedTrips: $connectedTrips, canceledTrips: $canceledTrips, containerList: $containerList, cargoItems: $cargoItems)';
}


}

/// @nodoc
abstract mixin class _$JobRequestCopyWith<$Res> implements $JobRequestCopyWith<$Res> {
  factory _$JobRequestCopyWith(_JobRequest value, $Res Function(_JobRequest) _then) = __$JobRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'clearance_agent') String? clearanceAgent, String? operation,@JsonKey(name: 'is_connected') int? isConnected,@JsonKey(name: 'import_type') String? importType,@JsonKey(name: 'number_of_truck_for_import') int? numberOfTruckForImport,@JsonKey(name: 'export_type') String? exportType,@JsonKey(name: 'number_of_trucks_for_export') int? numberOfTrucksForExport,@JsonKey(name: 'number_of_truck_roro') dynamic numberOfTruckRoro,@JsonKey(name: 'ship__voyage_number') String? shipVoyageNumber, String? status, String? creation,@JsonKey(name: 'allow_merge') bool? allowMerge,@JsonKey(name: 'arabic_berth') String? arabicBerth,@JsonKey(name: 'manifest_doc') ManifestDoc? manifestDoc,@JsonKey(name: 'connected_trips') List<ConnectedTrip>? connectedTrips,@JsonKey(name: 'canceled_trips') List<CanceledTrip>? canceledTrips,@JsonKey(name: 'container_list') List<ContainerList>? containerList,@JsonKey(name: 'cargo_items') List<dynamic>? cargoItems
});


@override $ManifestDocCopyWith<$Res>? get manifestDoc;

}
/// @nodoc
class __$JobRequestCopyWithImpl<$Res>
    implements _$JobRequestCopyWith<$Res> {
  __$JobRequestCopyWithImpl(this._self, this._then);

  final _JobRequest _self;
  final $Res Function(_JobRequest) _then;

/// Create a copy of JobRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? orderNumber = freezed,Object? clearanceAgent = freezed,Object? operation = freezed,Object? isConnected = freezed,Object? importType = freezed,Object? numberOfTruckForImport = freezed,Object? exportType = freezed,Object? numberOfTrucksForExport = freezed,Object? numberOfTruckRoro = freezed,Object? shipVoyageNumber = freezed,Object? status = freezed,Object? creation = freezed,Object? allowMerge = freezed,Object? arabicBerth = freezed,Object? manifestDoc = freezed,Object? connectedTrips = freezed,Object? canceledTrips = freezed,Object? containerList = freezed,Object? cargoItems = freezed,}) {
  return _then(_JobRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,clearanceAgent: freezed == clearanceAgent ? _self.clearanceAgent : clearanceAgent // ignore: cast_nullable_to_non_nullable
as String?,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as String?,isConnected: freezed == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as int?,importType: freezed == importType ? _self.importType : importType // ignore: cast_nullable_to_non_nullable
as String?,numberOfTruckForImport: freezed == numberOfTruckForImport ? _self.numberOfTruckForImport : numberOfTruckForImport // ignore: cast_nullable_to_non_nullable
as int?,exportType: freezed == exportType ? _self.exportType : exportType // ignore: cast_nullable_to_non_nullable
as String?,numberOfTrucksForExport: freezed == numberOfTrucksForExport ? _self.numberOfTrucksForExport : numberOfTrucksForExport // ignore: cast_nullable_to_non_nullable
as int?,numberOfTruckRoro: freezed == numberOfTruckRoro ? _self.numberOfTruckRoro : numberOfTruckRoro // ignore: cast_nullable_to_non_nullable
as dynamic,shipVoyageNumber: freezed == shipVoyageNumber ? _self.shipVoyageNumber : shipVoyageNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,allowMerge: freezed == allowMerge ? _self.allowMerge : allowMerge // ignore: cast_nullable_to_non_nullable
as bool?,arabicBerth: freezed == arabicBerth ? _self.arabicBerth : arabicBerth // ignore: cast_nullable_to_non_nullable
as String?,manifestDoc: freezed == manifestDoc ? _self.manifestDoc : manifestDoc // ignore: cast_nullable_to_non_nullable
as ManifestDoc?,connectedTrips: freezed == connectedTrips ? _self._connectedTrips : connectedTrips // ignore: cast_nullable_to_non_nullable
as List<ConnectedTrip>?,canceledTrips: freezed == canceledTrips ? _self._canceledTrips : canceledTrips // ignore: cast_nullable_to_non_nullable
as List<CanceledTrip>?,containerList: freezed == containerList ? _self._containerList : containerList // ignore: cast_nullable_to_non_nullable
as List<ContainerList>?,cargoItems: freezed == cargoItems ? _self._cargoItems : cargoItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of JobRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ManifestDocCopyWith<$Res>? get manifestDoc {
    if (_self.manifestDoc == null) {
    return null;
  }

  return $ManifestDocCopyWith<$Res>(_self.manifestDoc!, (value) {
    return _then(_self.copyWith(manifestDoc: value));
  });
}
}

// dart format on
