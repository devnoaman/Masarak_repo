import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_list.freezed.dart';
part 'container_list.g.dart';

@freezed
abstract class ContainerList with _$ContainerList {
  factory ContainerList({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    int? docstatus,
    int? idx,
    @JsonKey(name: 'container__bill_of_lading') String? containerBillOfLading,
    @JsonKey(name: 'container_size') String? containerSize,
    @JsonKey(name: 'container_type') String? containerType,
    @JsonKey(name: 'container_bill_of_lading') String? containerBillOfLading2,
    @JsonKey(name: 'container_number') String? containerNumber,
    String? parent,
    String? parentfield,
    String? parenttype,
    String? doctype,
    @JsonKey(name: 'required_trucks') int? requiredTrucks,
  }) = _ContainerList;

  factory ContainerList.fromJson(Map<String, dynamic> json) =>
      _$ContainerListFromJson(json);
}
