// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String? get name => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;
  String? get creation => throw _privateConstructorUsedError;
  String? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_by')
  String? get modifiedBy => throw _privateConstructorUsedError;
  int? get docstatus => throw _privateConstructorUsedError;
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'workflow_state')
  String? get workflowState => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_request')
  String? get jobRequest => throw _privateConstructorUsedError;
  @JsonKey(name: 'port_name')
  String? get portName => throw _privateConstructorUsedError;
  @JsonKey(name: 'berth_name')
  String? get berthName => throw _privateConstructorUsedError;
  String? get berth => throw _privateConstructorUsedError;
  @JsonKey(name: 'cargo_type')
  String? get cargoType => throw _privateConstructorUsedError;
  String? get truck => throw _privateConstructorUsedError;
  @JsonKey(name: 'truck_number')
  String? get truckNumber => throw _privateConstructorUsedError;
  dynamic get queue => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_number')
  String? get containerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_number_export')
  dynamic get containerNumberExport => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_number_return')
  dynamic get containerNumberReturn => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_container_number_return')
  dynamic get secondContainerNumberReturn => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_container_size')
  String? get returnContainerSize => throw _privateConstructorUsedError;
  String? get driver => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_mother_name')
  String? get driverMotherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_check_point')
  String? get currentCheckPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_procedure')
  String? get currentProcedure => throw _privateConstructorUsedError;
  @JsonKey(name: 'exit_from_middle_custom')
  String? get exitFromMiddleCustom => throw _privateConstructorUsedError;
  String? get doctype => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_checkpoints')
  List<TripCheckpoint>? get tripCheckpoints =>
      throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String? name,
      String? owner,
      String? creation,
      String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      int? docstatus,
      int? idx,
      @JsonKey(name: 'workflow_state') String? workflowState,
      @JsonKey(name: 'job_request') String? jobRequest,
      @JsonKey(name: 'port_name') String? portName,
      @JsonKey(name: 'berth_name') String? berthName,
      String? berth,
      @JsonKey(name: 'cargo_type') String? cargoType,
      String? truck,
      @JsonKey(name: 'truck_number') String? truckNumber,
      dynamic queue,
      @JsonKey(name: 'container_number') String? containerNumber,
      @JsonKey(name: 'container_number_export') dynamic containerNumberExport,
      @JsonKey(name: 'container_number_return') dynamic containerNumberReturn,
      @JsonKey(name: 'second_container_number_return')
      dynamic secondContainerNumberReturn,
      @JsonKey(name: 'return_container_size') String? returnContainerSize,
      String? driver,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_mother_name') String? driverMotherName,
      @JsonKey(name: 'current_check_point') String? currentCheckPoint,
      @JsonKey(name: 'current_procedure') String? currentProcedure,
      @JsonKey(name: 'exit_from_middle_custom') String? exitFromMiddleCustom,
      String? doctype,
      @JsonKey(name: 'trip_checkpoints')
      List<TripCheckpoint>? tripCheckpoints});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? creation = freezed,
    Object? modified = freezed,
    Object? modifiedBy = freezed,
    Object? docstatus = freezed,
    Object? idx = freezed,
    Object? workflowState = freezed,
    Object? jobRequest = freezed,
    Object? portName = freezed,
    Object? berthName = freezed,
    Object? berth = freezed,
    Object? cargoType = freezed,
    Object? truck = freezed,
    Object? truckNumber = freezed,
    Object? queue = freezed,
    Object? containerNumber = freezed,
    Object? containerNumberExport = freezed,
    Object? containerNumberReturn = freezed,
    Object? secondContainerNumberReturn = freezed,
    Object? returnContainerSize = freezed,
    Object? driver = freezed,
    Object? driverName = freezed,
    Object? driverMotherName = freezed,
    Object? currentCheckPoint = freezed,
    Object? currentProcedure = freezed,
    Object? exitFromMiddleCustom = freezed,
    Object? doctype = freezed,
    Object? tripCheckpoints = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      workflowState: freezed == workflowState
          ? _value.workflowState
          : workflowState // ignore: cast_nullable_to_non_nullable
              as String?,
      jobRequest: freezed == jobRequest
          ? _value.jobRequest
          : jobRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      portName: freezed == portName
          ? _value.portName
          : portName // ignore: cast_nullable_to_non_nullable
              as String?,
      berthName: freezed == berthName
          ? _value.berthName
          : berthName // ignore: cast_nullable_to_non_nullable
              as String?,
      berth: freezed == berth
          ? _value.berth
          : berth // ignore: cast_nullable_to_non_nullable
              as String?,
      cargoType: freezed == cargoType
          ? _value.cargoType
          : cargoType // ignore: cast_nullable_to_non_nullable
              as String?,
      truck: freezed == truck
          ? _value.truck
          : truck // ignore: cast_nullable_to_non_nullable
              as String?,
      truckNumber: freezed == truckNumber
          ? _value.truckNumber
          : truckNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      queue: freezed == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      containerNumber: freezed == containerNumber
          ? _value.containerNumber
          : containerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      containerNumberExport: freezed == containerNumberExport
          ? _value.containerNumberExport
          : containerNumberExport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      containerNumberReturn: freezed == containerNumberReturn
          ? _value.containerNumberReturn
          : containerNumberReturn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondContainerNumberReturn: freezed == secondContainerNumberReturn
          ? _value.secondContainerNumberReturn
          : secondContainerNumberReturn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      returnContainerSize: freezed == returnContainerSize
          ? _value.returnContainerSize
          : returnContainerSize // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverMotherName: freezed == driverMotherName
          ? _value.driverMotherName
          : driverMotherName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCheckPoint: freezed == currentCheckPoint
          ? _value.currentCheckPoint
          : currentCheckPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      currentProcedure: freezed == currentProcedure
          ? _value.currentProcedure
          : currentProcedure // ignore: cast_nullable_to_non_nullable
              as String?,
      exitFromMiddleCustom: freezed == exitFromMiddleCustom
          ? _value.exitFromMiddleCustom
          : exitFromMiddleCustom // ignore: cast_nullable_to_non_nullable
              as String?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      tripCheckpoints: freezed == tripCheckpoints
          ? _value.tripCheckpoints
          : tripCheckpoints // ignore: cast_nullable_to_non_nullable
              as List<TripCheckpoint>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? owner,
      String? creation,
      String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      int? docstatus,
      int? idx,
      @JsonKey(name: 'workflow_state') String? workflowState,
      @JsonKey(name: 'job_request') String? jobRequest,
      @JsonKey(name: 'port_name') String? portName,
      @JsonKey(name: 'berth_name') String? berthName,
      String? berth,
      @JsonKey(name: 'cargo_type') String? cargoType,
      String? truck,
      @JsonKey(name: 'truck_number') String? truckNumber,
      dynamic queue,
      @JsonKey(name: 'container_number') String? containerNumber,
      @JsonKey(name: 'container_number_export') dynamic containerNumberExport,
      @JsonKey(name: 'container_number_return') dynamic containerNumberReturn,
      @JsonKey(name: 'second_container_number_return')
      dynamic secondContainerNumberReturn,
      @JsonKey(name: 'return_container_size') String? returnContainerSize,
      String? driver,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_mother_name') String? driverMotherName,
      @JsonKey(name: 'current_check_point') String? currentCheckPoint,
      @JsonKey(name: 'current_procedure') String? currentProcedure,
      @JsonKey(name: 'exit_from_middle_custom') String? exitFromMiddleCustom,
      String? doctype,
      @JsonKey(name: 'trip_checkpoints')
      List<TripCheckpoint>? tripCheckpoints});
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? creation = freezed,
    Object? modified = freezed,
    Object? modifiedBy = freezed,
    Object? docstatus = freezed,
    Object? idx = freezed,
    Object? workflowState = freezed,
    Object? jobRequest = freezed,
    Object? portName = freezed,
    Object? berthName = freezed,
    Object? berth = freezed,
    Object? cargoType = freezed,
    Object? truck = freezed,
    Object? truckNumber = freezed,
    Object? queue = freezed,
    Object? containerNumber = freezed,
    Object? containerNumberExport = freezed,
    Object? containerNumberReturn = freezed,
    Object? secondContainerNumberReturn = freezed,
    Object? returnContainerSize = freezed,
    Object? driver = freezed,
    Object? driverName = freezed,
    Object? driverMotherName = freezed,
    Object? currentCheckPoint = freezed,
    Object? currentProcedure = freezed,
    Object? exitFromMiddleCustom = freezed,
    Object? doctype = freezed,
    Object? tripCheckpoints = freezed,
  }) {
    return _then(_$TripImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      workflowState: freezed == workflowState
          ? _value.workflowState
          : workflowState // ignore: cast_nullable_to_non_nullable
              as String?,
      jobRequest: freezed == jobRequest
          ? _value.jobRequest
          : jobRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      portName: freezed == portName
          ? _value.portName
          : portName // ignore: cast_nullable_to_non_nullable
              as String?,
      berthName: freezed == berthName
          ? _value.berthName
          : berthName // ignore: cast_nullable_to_non_nullable
              as String?,
      berth: freezed == berth
          ? _value.berth
          : berth // ignore: cast_nullable_to_non_nullable
              as String?,
      cargoType: freezed == cargoType
          ? _value.cargoType
          : cargoType // ignore: cast_nullable_to_non_nullable
              as String?,
      truck: freezed == truck
          ? _value.truck
          : truck // ignore: cast_nullable_to_non_nullable
              as String?,
      truckNumber: freezed == truckNumber
          ? _value.truckNumber
          : truckNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      queue: freezed == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      containerNumber: freezed == containerNumber
          ? _value.containerNumber
          : containerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      containerNumberExport: freezed == containerNumberExport
          ? _value.containerNumberExport
          : containerNumberExport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      containerNumberReturn: freezed == containerNumberReturn
          ? _value.containerNumberReturn
          : containerNumberReturn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondContainerNumberReturn: freezed == secondContainerNumberReturn
          ? _value.secondContainerNumberReturn
          : secondContainerNumberReturn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      returnContainerSize: freezed == returnContainerSize
          ? _value.returnContainerSize
          : returnContainerSize // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverMotherName: freezed == driverMotherName
          ? _value.driverMotherName
          : driverMotherName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCheckPoint: freezed == currentCheckPoint
          ? _value.currentCheckPoint
          : currentCheckPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      currentProcedure: freezed == currentProcedure
          ? _value.currentProcedure
          : currentProcedure // ignore: cast_nullable_to_non_nullable
              as String?,
      exitFromMiddleCustom: freezed == exitFromMiddleCustom
          ? _value.exitFromMiddleCustom
          : exitFromMiddleCustom // ignore: cast_nullable_to_non_nullable
              as String?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      tripCheckpoints: freezed == tripCheckpoints
          ? _value._tripCheckpoints
          : tripCheckpoints // ignore: cast_nullable_to_non_nullable
              as List<TripCheckpoint>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  _$TripImpl(
      {this.name,
      this.owner,
      this.creation,
      this.modified,
      @JsonKey(name: 'modified_by') this.modifiedBy,
      this.docstatus,
      this.idx,
      @JsonKey(name: 'workflow_state') this.workflowState,
      @JsonKey(name: 'job_request') this.jobRequest,
      @JsonKey(name: 'port_name') this.portName,
      @JsonKey(name: 'berth_name') this.berthName,
      this.berth,
      @JsonKey(name: 'cargo_type') this.cargoType,
      this.truck,
      @JsonKey(name: 'truck_number') this.truckNumber,
      this.queue,
      @JsonKey(name: 'container_number') this.containerNumber,
      @JsonKey(name: 'container_number_export') this.containerNumberExport,
      @JsonKey(name: 'container_number_return') this.containerNumberReturn,
      @JsonKey(name: 'second_container_number_return')
      this.secondContainerNumberReturn,
      @JsonKey(name: 'return_container_size') this.returnContainerSize,
      this.driver,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'driver_mother_name') this.driverMotherName,
      @JsonKey(name: 'current_check_point') this.currentCheckPoint,
      @JsonKey(name: 'current_procedure') this.currentProcedure,
      @JsonKey(name: 'exit_from_middle_custom') this.exitFromMiddleCustom,
      this.doctype,
      @JsonKey(name: 'trip_checkpoints')
      final List<TripCheckpoint>? tripCheckpoints})
      : _tripCheckpoints = tripCheckpoints;

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  final String? name;
  @override
  final String? owner;
  @override
  final String? creation;
  @override
  final String? modified;
  @override
  @JsonKey(name: 'modified_by')
  final String? modifiedBy;
  @override
  final int? docstatus;
  @override
  final int? idx;
  @override
  @JsonKey(name: 'workflow_state')
  final String? workflowState;
  @override
  @JsonKey(name: 'job_request')
  final String? jobRequest;
  @override
  @JsonKey(name: 'port_name')
  final String? portName;
  @override
  @JsonKey(name: 'berth_name')
  final String? berthName;
  @override
  final String? berth;
  @override
  @JsonKey(name: 'cargo_type')
  final String? cargoType;
  @override
  final String? truck;
  @override
  @JsonKey(name: 'truck_number')
  final String? truckNumber;
  @override
  final dynamic queue;
  @override
  @JsonKey(name: 'container_number')
  final String? containerNumber;
  @override
  @JsonKey(name: 'container_number_export')
  final dynamic containerNumberExport;
  @override
  @JsonKey(name: 'container_number_return')
  final dynamic containerNumberReturn;
  @override
  @JsonKey(name: 'second_container_number_return')
  final dynamic secondContainerNumberReturn;
  @override
  @JsonKey(name: 'return_container_size')
  final String? returnContainerSize;
  @override
  final String? driver;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'driver_mother_name')
  final String? driverMotherName;
  @override
  @JsonKey(name: 'current_check_point')
  final String? currentCheckPoint;
  @override
  @JsonKey(name: 'current_procedure')
  final String? currentProcedure;
  @override
  @JsonKey(name: 'exit_from_middle_custom')
  final String? exitFromMiddleCustom;
  @override
  final String? doctype;
  final List<TripCheckpoint>? _tripCheckpoints;
  @override
  @JsonKey(name: 'trip_checkpoints')
  List<TripCheckpoint>? get tripCheckpoints {
    final value = _tripCheckpoints;
    if (value == null) return null;
    if (_tripCheckpoints is EqualUnmodifiableListView) return _tripCheckpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Trip(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, workflowState: $workflowState, jobRequest: $jobRequest, portName: $portName, berthName: $berthName, berth: $berth, cargoType: $cargoType, truck: $truck, truckNumber: $truckNumber, queue: $queue, containerNumber: $containerNumber, containerNumberExport: $containerNumberExport, containerNumberReturn: $containerNumberReturn, secondContainerNumberReturn: $secondContainerNumberReturn, returnContainerSize: $returnContainerSize, driver: $driver, driverName: $driverName, driverMotherName: $driverMotherName, currentCheckPoint: $currentCheckPoint, currentProcedure: $currentProcedure, exitFromMiddleCustom: $exitFromMiddleCustom, doctype: $doctype, tripCheckpoints: $tripCheckpoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.creation, creation) ||
                other.creation == creation) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.workflowState, workflowState) ||
                other.workflowState == workflowState) &&
            (identical(other.jobRequest, jobRequest) ||
                other.jobRequest == jobRequest) &&
            (identical(other.portName, portName) ||
                other.portName == portName) &&
            (identical(other.berthName, berthName) ||
                other.berthName == berthName) &&
            (identical(other.berth, berth) || other.berth == berth) &&
            (identical(other.cargoType, cargoType) ||
                other.cargoType == cargoType) &&
            (identical(other.truck, truck) || other.truck == truck) &&
            (identical(other.truckNumber, truckNumber) ||
                other.truckNumber == truckNumber) &&
            const DeepCollectionEquality().equals(other.queue, queue) &&
            (identical(other.containerNumber, containerNumber) ||
                other.containerNumber == containerNumber) &&
            const DeepCollectionEquality()
                .equals(other.containerNumberExport, containerNumberExport) &&
            const DeepCollectionEquality()
                .equals(other.containerNumberReturn, containerNumberReturn) &&
            const DeepCollectionEquality().equals(
                other.secondContainerNumberReturn,
                secondContainerNumberReturn) &&
            (identical(other.returnContainerSize, returnContainerSize) ||
                other.returnContainerSize == returnContainerSize) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverMotherName, driverMotherName) ||
                other.driverMotherName == driverMotherName) &&
            (identical(other.currentCheckPoint, currentCheckPoint) ||
                other.currentCheckPoint == currentCheckPoint) &&
            (identical(other.currentProcedure, currentProcedure) ||
                other.currentProcedure == currentProcedure) &&
            (identical(other.exitFromMiddleCustom, exitFromMiddleCustom) ||
                other.exitFromMiddleCustom == exitFromMiddleCustom) &&
            (identical(other.doctype, doctype) || other.doctype == doctype) &&
            const DeepCollectionEquality()
                .equals(other._tripCheckpoints, _tripCheckpoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        owner,
        creation,
        modified,
        modifiedBy,
        docstatus,
        idx,
        workflowState,
        jobRequest,
        portName,
        berthName,
        berth,
        cargoType,
        truck,
        truckNumber,
        const DeepCollectionEquality().hash(queue),
        containerNumber,
        const DeepCollectionEquality().hash(containerNumberExport),
        const DeepCollectionEquality().hash(containerNumberReturn),
        const DeepCollectionEquality().hash(secondContainerNumberReturn),
        returnContainerSize,
        driver,
        driverName,
        driverMotherName,
        currentCheckPoint,
        currentProcedure,
        exitFromMiddleCustom,
        doctype,
        const DeepCollectionEquality().hash(_tripCheckpoints)
      ]);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  factory _Trip(
      {final String? name,
      final String? owner,
      final String? creation,
      final String? modified,
      @JsonKey(name: 'modified_by') final String? modifiedBy,
      final int? docstatus,
      final int? idx,
      @JsonKey(name: 'workflow_state') final String? workflowState,
      @JsonKey(name: 'job_request') final String? jobRequest,
      @JsonKey(name: 'port_name') final String? portName,
      @JsonKey(name: 'berth_name') final String? berthName,
      final String? berth,
      @JsonKey(name: 'cargo_type') final String? cargoType,
      final String? truck,
      @JsonKey(name: 'truck_number') final String? truckNumber,
      final dynamic queue,
      @JsonKey(name: 'container_number') final String? containerNumber,
      @JsonKey(name: 'container_number_export')
      final dynamic containerNumberExport,
      @JsonKey(name: 'container_number_return')
      final dynamic containerNumberReturn,
      @JsonKey(name: 'second_container_number_return')
      final dynamic secondContainerNumberReturn,
      @JsonKey(name: 'return_container_size') final String? returnContainerSize,
      final String? driver,
      @JsonKey(name: 'driver_name') final String? driverName,
      @JsonKey(name: 'driver_mother_name') final String? driverMotherName,
      @JsonKey(name: 'current_check_point') final String? currentCheckPoint,
      @JsonKey(name: 'current_procedure') final String? currentProcedure,
      @JsonKey(name: 'exit_from_middle_custom')
      final String? exitFromMiddleCustom,
      final String? doctype,
      @JsonKey(name: 'trip_checkpoints')
      final List<TripCheckpoint>? tripCheckpoints}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  String? get name;
  @override
  String? get owner;
  @override
  String? get creation;
  @override
  String? get modified;
  @override
  @JsonKey(name: 'modified_by')
  String? get modifiedBy;
  @override
  int? get docstatus;
  @override
  int? get idx;
  @override
  @JsonKey(name: 'workflow_state')
  String? get workflowState;
  @override
  @JsonKey(name: 'job_request')
  String? get jobRequest;
  @override
  @JsonKey(name: 'port_name')
  String? get portName;
  @override
  @JsonKey(name: 'berth_name')
  String? get berthName;
  @override
  String? get berth;
  @override
  @JsonKey(name: 'cargo_type')
  String? get cargoType;
  @override
  String? get truck;
  @override
  @JsonKey(name: 'truck_number')
  String? get truckNumber;
  @override
  dynamic get queue;
  @override
  @JsonKey(name: 'container_number')
  String? get containerNumber;
  @override
  @JsonKey(name: 'container_number_export')
  dynamic get containerNumberExport;
  @override
  @JsonKey(name: 'container_number_return')
  dynamic get containerNumberReturn;
  @override
  @JsonKey(name: 'second_container_number_return')
  dynamic get secondContainerNumberReturn;
  @override
  @JsonKey(name: 'return_container_size')
  String? get returnContainerSize;
  @override
  String? get driver;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName;
  @override
  @JsonKey(name: 'driver_mother_name')
  String? get driverMotherName;
  @override
  @JsonKey(name: 'current_check_point')
  String? get currentCheckPoint;
  @override
  @JsonKey(name: 'current_procedure')
  String? get currentProcedure;
  @override
  @JsonKey(name: 'exit_from_middle_custom')
  String? get exitFromMiddleCustom;
  @override
  String? get doctype;
  @override
  @JsonKey(name: 'trip_checkpoints')
  List<TripCheckpoint>? get tripCheckpoints;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
