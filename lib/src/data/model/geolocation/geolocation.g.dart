// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoLocationImpl _$$GeoLocationImplFromJson(Map<String, dynamic> json) =>
    _$GeoLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String,
      name: json['name'] as String?,
      detail: json['detail'] as String?,
      postalCode: json['postalCode'] as String?,
      subAdministrativeArea: json['subAdministrativeArea'] as String?,
      street: json['street'] as String?,
      subLocality: json['subLocality'] as String?,
      locality: json['locality'] as String?,
    );

Map<String, dynamic> _$$GeoLocationImplToJson(_$GeoLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'name': instance.name,
      'detail': instance.detail,
      'postalCode': instance.postalCode,
      'subAdministrativeArea': instance.subAdministrativeArea,
      'street': instance.street,
      'subLocality': instance.subLocality,
      'locality': instance.locality,
    };
