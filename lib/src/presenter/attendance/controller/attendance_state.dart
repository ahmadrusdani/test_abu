part of 'attendance_cubit.dart';


@freezed
class AttendanceState with _$AttendanceState {
  const AttendanceState._();

  const factory AttendanceState({
    GeoPoint? initLocation,
    GeoPoint? currentLocation,
    GeoPoint? previousLocation,
    String? error,
  }) = _AttendanceState;

}