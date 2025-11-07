// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContainerDetails _$ContainerDetailsFromJson(Map<String, dynamic> json) =>
    _ContainerDetails(
      containerNumber: json['container_number'],
      containerSize: json['container_size'],
      containerType: json['container_type'],
      billOfLading: json['bill_of_lading'],
    );

Map<String, dynamic> _$ContainerDetailsToJson(_ContainerDetails instance) =>
    <String, dynamic>{
      'container_number': instance.containerNumber,
      'container_size': instance.containerSize,
      'container_type': instance.containerType,
      'bill_of_lading': instance.billOfLading,
    };
