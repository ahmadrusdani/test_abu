import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart' as loc;

part 'attendance_cubit.freezed.dart';
part 'attendance_state.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  AttendanceCubit() : super(const AttendanceState());

  void initLocation() async {
    if (isClosed) return;
    emit(state.copyWith(
        initLocation: GeoPoint(
      latitude: -6.290195963175349,
      longitude: 106.78260789857671,
    )));
  }

  void updateCurrentLocation(GeoPoint? location) async {
    if (isClosed) return;
    final previousLocation = state.currentLocation;
    if (previousLocation?.latitude == location?.latitude &&
        previousLocation?.longitude == location?.longitude) {
      return;
    }
    emit(state.copyWith(
      previousLocation: previousLocation,
      currentLocation: location,
    ));
  }

  Future<double> _distanceLocation() async {
    if (state.initLocation == null || state.currentLocation == null) {
      return 0.0;
    }
    final distance = loc.Geolocator.distanceBetween(
      state.initLocation!.latitude,
      state.initLocation!.longitude,
      state.currentLocation!.latitude,
      state.currentLocation!.longitude,
    );
    debugPrint('distance: $distance');
    return distance;
  }

  Future<bool> isNearOfficeLocation() async {
    if (state.initLocation == null || state.currentLocation == null) {
      return false;
    }
    final distance = loc.Geolocator.distanceBetween(
      state.initLocation!.latitude,
      state.initLocation!.longitude,
      state.currentLocation!.latitude,
      state.currentLocation!.longitude,
    );
    debugPrint('distance: $distance');
    return distance <= state.radius;
  }

  GeoPoint? zoomToRegion() {
    if (state.initLocation == null || state.currentLocation == null) {
      return null;
    }
    final currentLoc = state.currentLocation!;
    final initLoc = state.initLocation!;
    double centerLat = (currentLoc.latitude + initLoc.latitude) / 2;
    double centerLon = (currentLoc.longitude + initLoc.longitude) / 2;

    return GeoPoint(latitude: centerLat, longitude: centerLon);
  }

  Future<int> calculateZoomLevel() async {
    final distance = await _distanceLocation();
    if (distance < 100) {
      return 18;
    } else if (distance < 500) {
      return 17;
    } else if (distance < 1000) {
      return 15;
    } else {
      return 12;
    }
  }
}
