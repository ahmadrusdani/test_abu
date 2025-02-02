import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    required DateTime date,
    AttendanceItemModel? checkIn,
    AttendanceItemModel? checkOut,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}

@freezed
class AttendanceItemModel with _$AttendanceItemModel {
  const factory AttendanceItemModel({
    required DateTime dateTime,
    required double latitude,
    required double longitude,
  }) = _AttendanceItemModel;

  factory AttendanceItemModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceItemModelFromJson(json);
}