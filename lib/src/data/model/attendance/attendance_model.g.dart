// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceModelImpl(
      date: DateTime.parse(json['date'] as String),
      checkIn: json['checkIn'] == null
          ? null
          : AttendanceItemModel.fromJson(
              json['checkIn'] as Map<String, dynamic>),
      checkOut: json['checkOut'] == null
          ? null
          : AttendanceItemModel.fromJson(
              json['checkOut'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceModelImplToJson(
        _$AttendanceModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
    };

_$AttendanceItemModelImpl _$$AttendanceItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceItemModelImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$AttendanceItemModelImplToJson(
        _$AttendanceItemModelImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
