// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      trip: json['trip'] == null
          ? null
          : Trip.fromJson(json['trip'] as Map<String, dynamic>),
      jobRequest: json['job_request'] == null
          ? null
          : JobRequest.fromJson(json['job_request'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'trip': instance.trip,
      'job_request': instance.jobRequest,
    };
