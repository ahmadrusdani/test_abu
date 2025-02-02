import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_abu/src/core/utils/extensions.dart';
import 'package:test_abu/src/data/model/attendance/attendance_model.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required List<AttendanceModel> attendances})
      : super(HomeState(attendances: attendances)) {
    initAttendances();
  }

  void initAttendances() {
    List<AttendanceModel?> initAttendances = [...state.attendances];
    final currentAttendance = initAttendances.firstWhere(
      (attendance) => attendance?.date.isSameDate(DateTime.now()) == true,
      orElse: () => null,
    );
    emit(state.copyWith(currentAttendance: currentAttendance));
  }

  void updateAttendanceIn(AttendanceItemModel? attendanceItemModel) {
    if (attendanceItemModel == null) return;
    final attendance = AttendanceModel(
      date: DateTime.now(),
      checkIn: attendanceItemModel,
    );
    final attendances = [...state.attendances];
    attendances.insert(0, attendance);
    emit(state.copyWith(
      currentAttendance: attendance,
      attendances: attendances,
    ));
  }

  void updateAttendanceOut(AttendanceItemModel? attendanceItemModel) {
    if (attendanceItemModel == null) return;
    final attendances = [...state.attendances];
    final item = attendances.firstWhere(
      (element) =>
          element.date.isSameDate(attendanceItemModel.dateTime) == true,
    );
    final index = attendances.indexOf(item);
    attendances[index] = item.copyWith(checkOut: attendanceItemModel);
    emit(
      state.copyWith(
        attendances: attendances,
        currentAttendance: state.currentAttendance?.copyWith(
          checkOut: attendanceItemModel,
        ),
      ),
    );
  }

}
