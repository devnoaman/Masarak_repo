// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_info_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripInfoResImpl _$$TripInfoResImplFromJson(Map<String, dynamic> json) =>
    _$TripInfoResImpl(
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TripInfoResImplToJson(_$TripInfoResImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
