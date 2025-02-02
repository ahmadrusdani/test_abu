import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.freezed.dart';

part 'geolocation.g.dart';

@freezed
class GeoLocation with _$GeoLocation {
  const GeoLocation._();

  const factory GeoLocation({
    required double latitude,
    required double longitude,
    required String address,
    String? name,
    String? detail,
    String? postalCode,
    String? subAdministrativeArea,
    String? street,
    String? subLocality,
    String? locality,
  }) = _GeoLocation;

  factory GeoLocation.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationFromJson(json);

  String get title {
    return subLocality != null
        ? street != null
            ? '$street, $subLocality'
            : subLocality ?? ''
        : locality ?? subAdministrativeArea ?? '';
  }

  String get label => name ?? title;

  String get subtitle {
    return postalCode != null ? '$address, $postalCode' : address;
  }
}
