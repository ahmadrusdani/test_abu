import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test_abu/src/core/utils/extensions.dart';
import 'package:test_abu/src/core/utils/json_utils.dart';
import 'package:test_abu/src/data/model/attendance/attendance_model.dart';

part 'app_cubit.freezed.dart';
part 'app_cubit.g.dart';
part 'app_state.dart';

class AppCubit extends HydratedCubit<AppState> {
  AppCubit() : super(const AppState());

  void updateAttendance(AttendanceModel? attendanceModel) {
    if (attendanceModel == null) {
      return;
    }

    List<AttendanceModel?> newList = [...state.attendances];

    final item = newList.firstWhere(
      (element) => element?.date.isSameDate(attendanceModel.date) == true,
      orElse: () => null,
    );

    if (item != null) {
      final index = newList.indexOf(item);
      newList[index] = attendanceModel;
    } else {
      newList.insert(0, attendanceModel);
    }

    final resultList = newList
        .where((element) => element != null)
        .cast<AttendanceModel>()
        .toList();

    emit(state.copyWith(
      attendances: resultList,
    ));
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    try {
      return AppState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }
}
