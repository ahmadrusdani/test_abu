part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default([]) List<AttendanceModel> attendances,
    AttendanceModel? currentAttendance,
    String? error,
  }) = _HomeState;

  String get attendanceTitle {
    String title = "Anda belum absen hari ini";
    if (currentAttendance != null) {
      if (currentAttendance?.checkOut == null) {
        title = "Anda belum absen pulang hari ini";
      } else {
        title = "Anda sudah melengkapi absen hari ini";
      }
    }
    return title;
  }
}
