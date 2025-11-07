import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_list.freezed.dart';
part 'container_list.g.dart';

@freezed
class ContainerList with _$ContainerList {
  factory ContainerList({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    int? docstatus,
    int? idx,
    @JsonKey(name: 'container__bill_of_lading') String? containerBillOfLading_,
    @JsonKey(name: 'container_size') String? containerSize,
    @JsonKey(name: 'container_type') String? containerType,
    @JsonKey(name: 'container_bill_of_lading') String? containerBillOfLading,
    @JsonKey(name: 'container_number') String? containerNumber,
    String? parent,
    String? parentfield,
    String? parenttype,
    String? doctype,
  }) = _ContainerList;

  factory ContainerList.fromJson(Map<String, dynamic> json) =>
      _$ContainerListFromJson(json);
}
