part of 'attendance_cubit.dart';


@freezed
class AttendanceState with _$AttendanceState {
  const AttendanceState._();

  const factory AttendanceState({
    GeoPoint? initLocation,
    GeoPoint? currentLocation,
    GeoPoint? previousLocation,
    @Default(20.0) double radius,
    String? error,
  }) = _AttendanceState;

}