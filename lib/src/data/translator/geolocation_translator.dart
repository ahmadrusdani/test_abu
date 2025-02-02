import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:location/location.dart' as location;
import 'package:test_abu/src/data/model/geolocation/geolocation.dart';

extension GeocodingTranslator on geocoding.Location {
  GeoLocation toGeoLocation() {
    return GeoLocation(latitude: latitude, longitude: longitude, address: '');
  }
}

extension LocationTranslator on location.LocationData {
  GeoLocation toGeoLocation() {
    return GeoLocation(latitude: latitude ?? 0, longitude: longitude ?? 0, address: '');
  }
}

extension PlacemarkTranslator on geocoding.Placemark {
  String get displayAddress {
    return '$street, $subLocality, '
        '$locality, $subAdministrativeArea, '
        '$administrativeArea';
  }
}
