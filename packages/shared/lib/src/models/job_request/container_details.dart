import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_details.freezed.dart';
part 'container_details.g.dart';

@freezed
abstract class ContainerDetails with _$ContainerDetails {
  factory ContainerDetails({
    @JsonKey(name: 'container_number') dynamic containerNumber,
    @JsonKey(name: 'container_size') dynamic containerSize,
    @JsonKey(name: 'container_type') dynamic containerType,
    @JsonKey(name: 'bill_of_lading') dynamic billOfLading,
  }) = _ContainerDetails;

  factory ContainerDetails.fromJson(Map<String, dynamic> json) =>
      _$ContainerDetailsFromJson(json);
}
