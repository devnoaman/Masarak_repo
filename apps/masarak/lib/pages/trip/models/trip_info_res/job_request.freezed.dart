// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobRequest _$JobRequestFromJson(Map<String, dynamic> json) {
  return _JobRequest.fromJson(json);
}

/// @nodoc
mixin _$JobRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;
  String? get creation => throw _privateConstructorUsedError;
  String? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_by')
  String? get modifiedBy => throw _privateConstructorUsedError;
  int? get docstatus => throw _privateConstructorUsedError;
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get operation => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cargo_agent')
  String? get cargoAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'clearance_agent')
  String? get clearanceAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'exit_from_middle_custom')
  int? get exitFromMiddleCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'importer_name')
  String? get importerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ship__voyage_number')
  String? get shipVoyageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'docking_date')
  dynamic get dockingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'port_name')
  String? get portName => throw _privateConstructorUsedError;
  String? get ship => throw _privateConstructorUsedError;
  @JsonKey(name: 'voyage_number')
  String? get voyageNumber => throw _privateConstructorUsedError;
  String? get berth => throw _privateConstructorUsedError;
  @JsonKey(name: 'import_type')
  String? get importType => throw _privateConstructorUsedError;
  @JsonKey(name: 'add_by_bill_of_lading_or_container')
  String? get addByBillOfLadingOrContainer =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_truck_for_import')
  int? get numberOfTruckForImport => throw _privateConstructorUsedError;
  @JsonKey(name: 'export_type')
  String? get exportType => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_trucks_for_export')
  int? get numberOfTrucksForExport => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_order')
  dynamic get deliveryOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'amended_from')
  dynamic get amendedFrom => throw _privateConstructorUsedError;
  String? get doctype => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_list_export')
  List<dynamic>? get containerListExport => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_list')
  List<ContainerList>? get containerList => throw _privateConstructorUsedError;
  @JsonKey(name: 'cargo_items_export')
  List<dynamic>? get cargoItemsExport => throw _privateConstructorUsedError;
  @JsonKey(name: 'roro_items')
  List<dynamic>? get roroItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'roro_items_export')
  List<dynamic>? get roroItemsExport => throw _privateConstructorUsedError;
  @JsonKey(name: 'cargo_items')
  List<dynamic>? get cargoItems => throw _privateConstructorUsedError;

  /// Serializes this JobRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobRequestCopyWith<JobRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobRequestCopyWith<$Res> {
  factory $JobRequestCopyWith(
          JobRequest value, $Res Function(JobRequest) then) =
      _$JobRequestCopyWithImpl<$Res, JobRequest>;
  @useResult
  $Res call(
      {String? name,
      String? owner,
      String? creation,
      String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      int? docstatus,
      int? idx,
      @JsonKey(name: 'order_number') String? orderNumber,
      String? operation,
      String? status,
      @JsonKey(name: 'cargo_agent') String? cargoAgent,
      @JsonKey(name: 'clearance_agent') String? clearanceAgent,
      @JsonKey(name: 'exit_from_middle_custom') int? exitFromMiddleCustom,
      @JsonKey(name: 'importer_name') String? importerName,
      @JsonKey(name: 'ship__voyage_number') String? shipVoyageNumber,
      @JsonKey(name: 'docking_date') dynamic dockingDate,
      @JsonKey(name: 'port_name') String? portName,
      String? ship,
      @JsonKey(name: 'voyage_number') String? voyageNumber,
      String? berth,
      @JsonKey(name: 'import_type') String? importType,
      @JsonKey(name: 'add_by_bill_of_lading_or_container')
      String? addByBillOfLadingOrContainer,
      @JsonKey(name: 'number_of_truck_for_import') int? numberOfTruckForImport,
      @JsonKey(name: 'export_type') String? exportType,
      @JsonKey(name: 'number_of_trucks_for_export')
      int? numberOfTrucksForExport,
      @JsonKey(name: 'delivery_order') dynamic deliveryOrder,
      @JsonKey(name: 'amended_from') dynamic amendedFrom,
      String? doctype,
      @JsonKey(name: 'container_list_export')
      List<dynamic>? containerListExport,
      @JsonKey(name: 'container_list') List<ContainerList>? containerList,
      @JsonKey(name: 'cargo_items_export') List<dynamic>? cargoItemsExport,
      @JsonKey(name: 'roro_items') List<dynamic>? roroItems,
      @JsonKey(name: 'roro_items_export') List<dynamic>? roroItemsExport,
      @JsonKey(name: 'cargo_items') List<dynamic>? cargoItems});
}

/// @nodoc
class _$JobRequestCopyWithImpl<$Res, $Val extends JobRequest>
    implements $JobRequestCopyWith<$Res> {
  _$JobRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobRequest
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
    Object? orderNumber = freezed,
    Object? operation = freezed,
    Object? status = freezed,
    Object? cargoAgent = freezed,
    Object? clearanceAgent = freezed,
    Object? exitFromMiddleCustom = freezed,
    Object? importerName = freezed,
    Object? shipVoyageNumber = freezed,
    Object? dockingDate = freezed,
    Object? portName = freezed,
    Object? ship = freezed,
    Object? voyageNumber = freezed,
    Object? berth = freezed,
    Object? importType = freezed,
    Object? addByBillOfLadingOrContainer = freezed,
    Object? numberOfTruckForImport = freezed,
    Object? exportType = freezed,
    Object? numberOfTrucksForExport = freezed,
    Object? deliveryOrder = freezed,
    Object? amendedFrom = freezed,
    Object? doctype = freezed,
    Object? containerListExport = freezed,
    Object? containerList = freezed,
    Object? cargoItemsExport = freezed,
    Object? roroItems = freezed,
    Object? roroItemsExport = freezed,
    Object? cargoItems = freezed,
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
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cargoAgent: freezed == cargoAgent
          ? _value.cargoAgent
          : cargoAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      clearanceAgent: freezed == clearanceAgent
          ? _value.clearanceAgent
          : clearanceAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      exitFromMiddleCustom: freezed == exitFromMiddleCustom
          ? _value.exitFromMiddleCustom
          : exitFromMiddleCustom // ignore: cast_nullable_to_non_nullable
              as int?,
      importerName: freezed == importerName
          ? _value.importerName
          : importerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shipVoyageNumber: freezed == shipVoyageNumber
          ? _value.shipVoyageNumber
          : shipVoyageNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dockingDate: freezed == dockingDate
          ? _value.dockingDate
          : dockingDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      portName: freezed == portName
          ? _value.portName
          : portName // ignore: cast_nullable_to_non_nullable
              as String?,
      ship: freezed == ship
          ? _value.ship
          : ship // ignore: cast_nullable_to_non_nullable
              as String?,
      voyageNumber: freezed == voyageNumber
          ? _value.voyageNumber
          : voyageNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      berth: freezed == berth
          ? _value.berth
          : berth // ignore: cast_nullable_to_non_nullable
              as String?,
      importType: freezed == importType
          ? _value.importType
          : importType // ignore: cast_nullable_to_non_nullable
              as String?,
      addByBillOfLadingOrContainer: freezed == addByBillOfLadingOrContainer
          ? _value.addByBillOfLadingOrContainer
          : addByBillOfLadingOrContainer // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfTruckForImport: freezed == numberOfTruckForImport
          ? _value.numberOfTruckForImport
          : numberOfTruckForImport // ignore: cast_nullable_to_non_nullable
              as int?,
      exportType: freezed == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfTrucksForExport: freezed == numberOfTrucksForExport
          ? _value.numberOfTrucksForExport
          : numberOfTrucksForExport // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryOrder: freezed == deliveryOrder
          ? _value.deliveryOrder
          : deliveryOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amendedFrom: freezed == amendedFrom
          ? _value.amendedFrom
          : amendedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      containerListExport: freezed == containerListExport
          ? _value.containerListExport
          : containerListExport // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      containerList: freezed == containerList
          ? _value.containerList
          : containerList // ignore: cast_nullable_to_non_nullable
              as List<ContainerList>?,
      cargoItemsExport: freezed == cargoItemsExport
          ? _value.cargoItemsExport
          : cargoItemsExport // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roroItems: freezed == roroItems
          ? _value.roroItems
          : roroItems // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roroItemsExport: freezed == roroItemsExport
          ? _value.roroItemsExport
          : roroItemsExport // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cargoItems: freezed == cargoItems
          ? _value.cargoItems
          : cargoItems // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobRequestImplCopyWith<$Res>
    implements $JobRequestCopyWith<$Res> {
  factory _$$JobRequestImplCopyWith(
          _$JobRequestImpl value, $Res Function(_$JobRequestImpl) then) =
      __$$JobRequestImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'order_number') String? orderNumber,
      String? operation,
      String? status,
      @JsonKey(name: 'cargo_agent') String? cargoAgent,
      @JsonKey(name: 'clearance_agent') String? clearanceAgent,
      @JsonKey(name: 'exit_from_middle_custom') int? exitFromMiddleCustom,
      @JsonKey(name: 'importer_name') String? importerName,
      @JsonKey(name: 'ship__voyage_number') String? shipVoyageNumber,
      @JsonKey(name: 'docking_date') dynamic dockingDate,
      @JsonKey(name: 'port_name') String? portName,
      String? ship,
      @JsonKey(name: 'voyage_number') String? voyageNumber,
      String? berth,
      @JsonKey(name: 'import_type') String? importType,
      @JsonKey(name: 'add_by_bill_of_lading_or_container')
      String? addByBillOfLadingOrContainer,
      @JsonKey(name: 'number_of_truck_for_import') int? numberOfTruckForImport,
      @JsonKey(name: 'export_type') String? exportType,
      @JsonKey(name: 'number_of_trucks_for_export')
      int? numberOfTrucksForExport,
      @JsonKey(name: 'delivery_order') dynamic deliveryOrder,
      @JsonKey(name: 'amended_from') dynamic amendedFrom,
      String? doctype,
      @JsonKey(name: 'container_list_export')
      List<dynamic>? containerListExport,
      @JsonKey(name: 'container_list') List<ContainerList>? containerList,
      @JsonKey(name: 'cargo_items_export') List<dynamic>? cargoItemsExport,
      @JsonKey(name: 'roro_items') List<dynamic>? roroItems,
      @JsonKey(name: 'roro_items_export') List<dynamic>? roroItemsExport,
      @JsonKey(name: 'cargo_items') List<dynamic>? cargoItems});
}

/// @nodoc
class __$$JobRequestImplCopyWithImpl<$Res>
    extends _$JobRequestCopyWithImpl<$Res, _$JobRequestImpl>
    implements _$$JobRequestImplCopyWith<$Res> {
  __$$JobRequestImplCopyWithImpl(
      _$JobRequestImpl _value, $Res Function(_$JobRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobRequest
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
    Object? orderNumber = freezed,
    Object? operation = freezed,
    Object? status = freezed,
    Object? cargoAgent = freezed,
    Object? clearanceAgent = freezed,
    Object? exitFromMiddleCustom = freezed,
    Object? importerName = freezed,
    Object? shipVoyageNumber = freezed,
    Object? dockingDate = freezed,
    Object? portName = freezed,
    Object? ship = freezed,
    Object? voyageNumber = freezed,
    Object? berth = freezed,
    Object? importType = freezed,
    Object? addByBillOfLadingOrContainer = freezed,
    Object? numberOfTruckForImport = freezed,
    Object? exportType = freezed,
    Object? numberOfTrucksForExport = freezed,
    Object? deliveryOrder = freezed,
    Object? amendedFrom = freezed,
    Object? doctype = freezed,
    Object? containerListExport = freezed,
    Object? containerList = freezed,
    Object? cargoItemsExport = freezed,
    Object? roroItems = freezed,
    Object? roroItemsExport = freezed,
    Object? cargoItems = freezed,
  }) {
    return _then(_$JobRequestImpl(
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
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cargoAgent: freezed == cargoAgent
          ? _value.cargoAgent
          : cargoAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      clearanceAgent: freezed == clearanceAgent
          ? _value.clearanceAgent
          : clearanceAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      exitFromMiddleCustom: freezed == exitFromMiddleCustom
          ? _value.exitFromMiddleCustom
          : exitFromMiddleCustom // ignore: cast_nullable_to_non_nullable
              as int?,
      importerName: freezed == importerName
          ? _value.importerName
          : importerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shipVoyageNumber: freezed == shipVoyageNumber
          ? _value.shipVoyageNumber
          : shipVoyageNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dockingDate: freezed == dockingDate
          ? _value.dockingDate
          : dockingDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      portName: freezed == portName
          ? _value.portName
          : portName // ignore: cast_nullable_to_non_nullable
              as String?,
      ship: freezed == ship
          ? _value.ship
          : ship // ignore: cast_nullable_to_non_nullable
              as String?,
      voyageNumber: freezed == voyageNumber
          ? _value.voyageNumber
          : voyageNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      berth: freezed == berth
          ? _value.berth
          : berth // ignore: cast_nullable_to_non_nullable
              as String?,
      importType: freezed == importType
          ? _value.importType
          : importType // ignore: cast_nullable_to_non_nullable
              as String?,
      addByBillOfLadingOrContainer: freezed == addByBillOfLadingOrContainer
          ? _value.addByBillOfLadingOrContainer
          : addByBillOfLadingOrContainer // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfTruckForImport: freezed == numberOfTruckForImport
          ? _value.numberOfTruckForImport
          : numberOfTruckForImport // ignore: cast_nullable_to_non_nullable
              as int?,
      exportType: freezed == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfTrucksForExport: freezed == numberOfTrucksForExport
          ? _value.numberOfTrucksForExport
          : numberOfTrucksForExport // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryOrder: freezed == deliveryOrder
          ? _value.deliveryOrder
          : deliveryOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amendedFrom: freezed == amendedFrom
          ? _value.amendedFrom
          : amendedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
      containerListExport: freezed == containerListExport
          ? _value._containerListExport
          : containerListExport // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      containerList: freezed == containerList
          ? _value._containerList
          : containerList // ignore: cast_nullable_to_non_nullable
              as List<ContainerList>?,
      cargoItemsExport: freezed == cargoItemsExport
          ? _value._cargoItemsExport
          : cargoItemsExport // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roroItems: freezed == roroItems
          ? _value._roroItems
          : roroItems // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      roroItemsExport: freezed == roroItemsExport
          ? _value._roroItemsExport
          : roroItemsExport // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cargoItems: freezed == cargoItems
          ? _value._cargoItems
          : cargoItems // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobRequestImpl implements _JobRequest {
  _$JobRequestImpl(
      {this.name,
      this.owner,
      this.creation,
      this.modified,
      @JsonKey(name: 'modified_by') this.modifiedBy,
      this.docstatus,
      this.idx,
      @JsonKey(name: 'order_number') this.orderNumber,
      this.operation,
      this.status,
      @JsonKey(name: 'cargo_agent') this.cargoAgent,
      @JsonKey(name: 'clearance_agent') this.clearanceAgent,
      @JsonKey(name: 'exit_from_middle_custom') this.exitFromMiddleCustom,
      @JsonKey(name: 'importer_name') this.importerName,
      @JsonKey(name: 'ship__voyage_number') this.shipVoyageNumber,
      @JsonKey(name: 'docking_date') this.dockingDate,
      @JsonKey(name: 'port_name') this.portName,
      this.ship,
      @JsonKey(name: 'voyage_number') this.voyageNumber,
      this.berth,
      @JsonKey(name: 'import_type') this.importType,
      @JsonKey(name: 'add_by_bill_of_lading_or_container')
      this.addByBillOfLadingOrContainer,
      @JsonKey(name: 'number_of_truck_for_import') this.numberOfTruckForImport,
      @JsonKey(name: 'export_type') this.exportType,
      @JsonKey(name: 'number_of_trucks_for_export')
      this.numberOfTrucksForExport,
      @JsonKey(name: 'delivery_order') this.deliveryOrder,
      @JsonKey(name: 'amended_from') this.amendedFrom,
      this.doctype,
      @JsonKey(name: 'container_list_export')
      final List<dynamic>? containerListExport,
      @JsonKey(name: 'container_list') final List<ContainerList>? containerList,
      @JsonKey(name: 'cargo_items_export')
      final List<dynamic>? cargoItemsExport,
      @JsonKey(name: 'roro_items') final List<dynamic>? roroItems,
      @JsonKey(name: 'roro_items_export') final List<dynamic>? roroItemsExport,
      @JsonKey(name: 'cargo_items') final List<dynamic>? cargoItems})
      : _containerListExport = containerListExport,
        _containerList = containerList,
        _cargoItemsExport = cargoItemsExport,
        _roroItems = roroItems,
        _roroItemsExport = roroItemsExport,
        _cargoItems = cargoItems;

  factory _$JobRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobRequestImplFromJson(json);

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
  @JsonKey(name: 'order_number')
  final String? orderNumber;
  @override
  final String? operation;
  @override
  final String? status;
  @override
  @JsonKey(name: 'cargo_agent')
  final String? cargoAgent;
  @override
  @JsonKey(name: 'clearance_agent')
  final String? clearanceAgent;
  @override
  @JsonKey(name: 'exit_from_middle_custom')
  final int? exitFromMiddleCustom;
  @override
  @JsonKey(name: 'importer_name')
  final String? importerName;
  @override
  @JsonKey(name: 'ship__voyage_number')
  final String? shipVoyageNumber;
  @override
  @JsonKey(name: 'docking_date')
  final dynamic dockingDate;
  @override
  @JsonKey(name: 'port_name')
  final String? portName;
  @override
  final String? ship;
  @override
  @JsonKey(name: 'voyage_number')
  final String? voyageNumber;
  @override
  final String? berth;
  @override
  @JsonKey(name: 'import_type')
  final String? importType;
  @override
  @JsonKey(name: 'add_by_bill_of_lading_or_container')
  final String? addByBillOfLadingOrContainer;
  @override
  @JsonKey(name: 'number_of_truck_for_import')
  final int? numberOfTruckForImport;
  @override
  @JsonKey(name: 'export_type')
  final String? exportType;
  @override
  @JsonKey(name: 'number_of_trucks_for_export')
  final int? numberOfTrucksForExport;
  @override
  @JsonKey(name: 'delivery_order')
  final dynamic deliveryOrder;
  @override
  @JsonKey(name: 'amended_from')
  final dynamic amendedFrom;
  @override
  final String? doctype;
  final List<dynamic>? _containerListExport;
  @override
  @JsonKey(name: 'container_list_export')
  List<dynamic>? get containerListExport {
    final value = _containerListExport;
    if (value == null) return null;
    if (_containerListExport is EqualUnmodifiableListView)
      return _containerListExport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContainerList>? _containerList;
  @override
  @JsonKey(name: 'container_list')
  List<ContainerList>? get containerList {
    final value = _containerList;
    if (value == null) return null;
    if (_containerList is EqualUnmodifiableListView) return _containerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _cargoItemsExport;
  @override
  @JsonKey(name: 'cargo_items_export')
  List<dynamic>? get cargoItemsExport {
    final value = _cargoItemsExport;
    if (value == null) return null;
    if (_cargoItemsExport is EqualUnmodifiableListView)
      return _cargoItemsExport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _roroItems;
  @override
  @JsonKey(name: 'roro_items')
  List<dynamic>? get roroItems {
    final value = _roroItems;
    if (value == null) return null;
    if (_roroItems is EqualUnmodifiableListView) return _roroItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _roroItemsExport;
  @override
  @JsonKey(name: 'roro_items_export')
  List<dynamic>? get roroItemsExport {
    final value = _roroItemsExport;
    if (value == null) return null;
    if (_roroItemsExport is EqualUnmodifiableListView) return _roroItemsExport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _cargoItems;
  @override
  @JsonKey(name: 'cargo_items')
  List<dynamic>? get cargoItems {
    final value = _cargoItems;
    if (value == null) return null;
    if (_cargoItems is EqualUnmodifiableListView) return _cargoItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JobRequest(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, orderNumber: $orderNumber, operation: $operation, status: $status, cargoAgent: $cargoAgent, clearanceAgent: $clearanceAgent, exitFromMiddleCustom: $exitFromMiddleCustom, importerName: $importerName, shipVoyageNumber: $shipVoyageNumber, dockingDate: $dockingDate, portName: $portName, ship: $ship, voyageNumber: $voyageNumber, berth: $berth, importType: $importType, addByBillOfLadingOrContainer: $addByBillOfLadingOrContainer, numberOfTruckForImport: $numberOfTruckForImport, exportType: $exportType, numberOfTrucksForExport: $numberOfTrucksForExport, deliveryOrder: $deliveryOrder, amendedFrom: $amendedFrom, doctype: $doctype, containerListExport: $containerListExport, containerList: $containerList, cargoItemsExport: $cargoItemsExport, roroItems: $roroItems, roroItemsExport: $roroItemsExport, cargoItems: $cargoItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobRequestImpl &&
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
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cargoAgent, cargoAgent) ||
                other.cargoAgent == cargoAgent) &&
            (identical(other.clearanceAgent, clearanceAgent) ||
                other.clearanceAgent == clearanceAgent) &&
            (identical(other.exitFromMiddleCustom, exitFromMiddleCustom) ||
                other.exitFromMiddleCustom == exitFromMiddleCustom) &&
            (identical(other.importerName, importerName) ||
                other.importerName == importerName) &&
            (identical(other.shipVoyageNumber, shipVoyageNumber) ||
                other.shipVoyageNumber == shipVoyageNumber) &&
            const DeepCollectionEquality()
                .equals(other.dockingDate, dockingDate) &&
            (identical(other.portName, portName) ||
                other.portName == portName) &&
            (identical(other.ship, ship) || other.ship == ship) &&
            (identical(other.voyageNumber, voyageNumber) ||
                other.voyageNumber == voyageNumber) &&
            (identical(other.berth, berth) || other.berth == berth) &&
            (identical(other.importType, importType) ||
                other.importType == importType) &&
            (identical(other.addByBillOfLadingOrContainer,
                    addByBillOfLadingOrContainer) ||
                other.addByBillOfLadingOrContainer ==
                    addByBillOfLadingOrContainer) &&
            (identical(other.numberOfTruckForImport, numberOfTruckForImport) ||
                other.numberOfTruckForImport == numberOfTruckForImport) &&
            (identical(other.exportType, exportType) ||
                other.exportType == exportType) &&
            (identical(
                    other.numberOfTrucksForExport, numberOfTrucksForExport) ||
                other.numberOfTrucksForExport == numberOfTrucksForExport) &&
            const DeepCollectionEquality()
                .equals(other.deliveryOrder, deliveryOrder) &&
            const DeepCollectionEquality()
                .equals(other.amendedFrom, amendedFrom) &&
            (identical(other.doctype, doctype) || other.doctype == doctype) &&
            const DeepCollectionEquality()
                .equals(other._containerListExport, _containerListExport) &&
            const DeepCollectionEquality()
                .equals(other._containerList, _containerList) &&
            const DeepCollectionEquality()
                .equals(other._cargoItemsExport, _cargoItemsExport) &&
            const DeepCollectionEquality()
                .equals(other._roroItems, _roroItems) &&
            const DeepCollectionEquality()
                .equals(other._roroItemsExport, _roroItemsExport) &&
            const DeepCollectionEquality()
                .equals(other._cargoItems, _cargoItems));
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
        orderNumber,
        operation,
        status,
        cargoAgent,
        clearanceAgent,
        exitFromMiddleCustom,
        importerName,
        shipVoyageNumber,
        const DeepCollectionEquality().hash(dockingDate),
        portName,
        ship,
        voyageNumber,
        berth,
        importType,
        addByBillOfLadingOrContainer,
        numberOfTruckForImport,
        exportType,
        numberOfTrucksForExport,
        const DeepCollectionEquality().hash(deliveryOrder),
        const DeepCollectionEquality().hash(amendedFrom),
        doctype,
        const DeepCollectionEquality().hash(_containerListExport),
        const DeepCollectionEquality().hash(_containerList),
        const DeepCollectionEquality().hash(_cargoItemsExport),
        const DeepCollectionEquality().hash(_roroItems),
        const DeepCollectionEquality().hash(_roroItemsExport),
        const DeepCollectionEquality().hash(_cargoItems)
      ]);

  /// Create a copy of JobRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobRequestImplCopyWith<_$JobRequestImpl> get copyWith =>
      __$$JobRequestImplCopyWithImpl<_$JobRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobRequestImplToJson(
      this,
    );
  }
}

abstract class _JobRequest implements JobRequest {
  factory _JobRequest(
      {final String? name,
      final String? owner,
      final String? creation,
      final String? modified,
      @JsonKey(name: 'modified_by') final String? modifiedBy,
      final int? docstatus,
      final int? idx,
      @JsonKey(name: 'order_number') final String? orderNumber,
      final String? operation,
      final String? status,
      @JsonKey(name: 'cargo_agent') final String? cargoAgent,
      @JsonKey(name: 'clearance_agent') final String? clearanceAgent,
      @JsonKey(name: 'exit_from_middle_custom') final int? exitFromMiddleCustom,
      @JsonKey(name: 'importer_name') final String? importerName,
      @JsonKey(name: 'ship__voyage_number') final String? shipVoyageNumber,
      @JsonKey(name: 'docking_date') final dynamic dockingDate,
      @JsonKey(name: 'port_name') final String? portName,
      final String? ship,
      @JsonKey(name: 'voyage_number') final String? voyageNumber,
      final String? berth,
      @JsonKey(name: 'import_type') final String? importType,
      @JsonKey(name: 'add_by_bill_of_lading_or_container')
      final String? addByBillOfLadingOrContainer,
      @JsonKey(name: 'number_of_truck_for_import')
      final int? numberOfTruckForImport,
      @JsonKey(name: 'export_type') final String? exportType,
      @JsonKey(name: 'number_of_trucks_for_export')
      final int? numberOfTrucksForExport,
      @JsonKey(name: 'delivery_order') final dynamic deliveryOrder,
      @JsonKey(name: 'amended_from') final dynamic amendedFrom,
      final String? doctype,
      @JsonKey(name: 'container_list_export')
      final List<dynamic>? containerListExport,
      @JsonKey(name: 'container_list') final List<ContainerList>? containerList,
      @JsonKey(name: 'cargo_items_export')
      final List<dynamic>? cargoItemsExport,
      @JsonKey(name: 'roro_items') final List<dynamic>? roroItems,
      @JsonKey(name: 'roro_items_export') final List<dynamic>? roroItemsExport,
      @JsonKey(name: 'cargo_items')
      final List<dynamic>? cargoItems}) = _$JobRequestImpl;

  factory _JobRequest.fromJson(Map<String, dynamic> json) =
      _$JobRequestImpl.fromJson;

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
  @JsonKey(name: 'order_number')
  String? get orderNumber;
  @override
  String? get operation;
  @override
  String? get status;
  @override
  @JsonKey(name: 'cargo_agent')
  String? get cargoAgent;
  @override
  @JsonKey(name: 'clearance_agent')
  String? get clearanceAgent;
  @override
  @JsonKey(name: 'exit_from_middle_custom')
  int? get exitFromMiddleCustom;
  @override
  @JsonKey(name: 'importer_name')
  String? get importerName;
  @override
  @JsonKey(name: 'ship__voyage_number')
  String? get shipVoyageNumber;
  @override
  @JsonKey(name: 'docking_date')
  dynamic get dockingDate;
  @override
  @JsonKey(name: 'port_name')
  String? get portName;
  @override
  String? get ship;
  @override
  @JsonKey(name: 'voyage_number')
  String? get voyageNumber;
  @override
  String? get berth;
  @override
  @JsonKey(name: 'import_type')
  String? get importType;
  @override
  @JsonKey(name: 'add_by_bill_of_lading_or_container')
  String? get addByBillOfLadingOrContainer;
  @override
  @JsonKey(name: 'number_of_truck_for_import')
  int? get numberOfTruckForImport;
  @override
  @JsonKey(name: 'export_type')
  String? get exportType;
  @override
  @JsonKey(name: 'number_of_trucks_for_export')
  int? get numberOfTrucksForExport;
  @override
  @JsonKey(name: 'delivery_order')
  dynamic get deliveryOrder;
  @override
  @JsonKey(name: 'amended_from')
  dynamic get amendedFrom;
  @override
  String? get doctype;
  @override
  @JsonKey(name: 'container_list_export')
  List<dynamic>? get containerListExport;
  @override
  @JsonKey(name: 'container_list')
  List<ContainerList>? get containerList;
  @override
  @JsonKey(name: 'cargo_items_export')
  List<dynamic>? get cargoItemsExport;
  @override
  @JsonKey(name: 'roro_items')
  List<dynamic>? get roroItems;
  @override
  @JsonKey(name: 'roro_items_export')
  List<dynamic>? get roroItemsExport;
  @override
  @JsonKey(name: 'cargo_items')
  List<dynamic>? get cargoItems;

  /// Create a copy of JobRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobRequestImplCopyWith<_$JobRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
