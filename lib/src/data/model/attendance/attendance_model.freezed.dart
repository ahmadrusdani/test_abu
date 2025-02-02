// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) {
  return _AttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceModel {
  DateTime get date => throw _privateConstructorUsedError;
  AttendanceItemModel? get checkIn => throw _privateConstructorUsedError;
  AttendanceItemModel? get checkOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceModelCopyWith<AttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceModelCopyWith<$Res> {
  factory $AttendanceModelCopyWith(
          AttendanceModel value, $Res Function(AttendanceModel) then) =
      _$AttendanceModelCopyWithImpl<$Res, AttendanceModel>;
  @useResult
  $Res call(
      {DateTime date,
      AttendanceItemModel? checkIn,
      AttendanceItemModel? checkOut});

  $AttendanceItemModelCopyWith<$Res>? get checkIn;
  $AttendanceItemModelCopyWith<$Res>? get checkOut;
}

/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res, $Val extends AttendanceModel>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as AttendanceItemModel?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as AttendanceItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceItemModelCopyWith<$Res>? get checkIn {
    if (_value.checkIn == null) {
      return null;
    }

    return $AttendanceItemModelCopyWith<$Res>(_value.checkIn!, (value) {
      return _then(_value.copyWith(checkIn: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceItemModelCopyWith<$Res>? get checkOut {
    if (_value.checkOut == null) {
      return null;
    }

    return $AttendanceItemModelCopyWith<$Res>(_value.checkOut!, (value) {
      return _then(_value.copyWith(checkOut: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceModelImplCopyWith<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  factory _$$AttendanceModelImplCopyWith(_$AttendanceModelImpl value,
          $Res Function(_$AttendanceModelImpl) then) =
      __$$AttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      AttendanceItemModel? checkIn,
      AttendanceItemModel? checkOut});

  @override
  $AttendanceItemModelCopyWith<$Res>? get checkIn;
  @override
  $AttendanceItemModelCopyWith<$Res>? get checkOut;
}

/// @nodoc
class __$$AttendanceModelImplCopyWithImpl<$Res>
    extends _$AttendanceModelCopyWithImpl<$Res, _$AttendanceModelImpl>
    implements _$$AttendanceModelImplCopyWith<$Res> {
  __$$AttendanceModelImplCopyWithImpl(
      _$AttendanceModelImpl _value, $Res Function(_$AttendanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_$AttendanceModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as AttendanceItemModel?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as AttendanceItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceModelImpl implements _AttendanceModel {
  const _$AttendanceModelImpl(
      {required this.date, this.checkIn, this.checkOut});

  factory _$AttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final AttendanceItemModel? checkIn;
  @override
  final AttendanceItemModel? checkOut;

  @override
  String toString() {
    return 'AttendanceModel(date: $date, checkIn: $checkIn, checkOut: $checkOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, checkIn, checkOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      __$$AttendanceModelImplCopyWithImpl<_$AttendanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceModel implements AttendanceModel {
  const factory _AttendanceModel(
      {required final DateTime date,
      final AttendanceItemModel? checkIn,
      final AttendanceItemModel? checkOut}) = _$AttendanceModelImpl;

  factory _AttendanceModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  AttendanceItemModel? get checkIn;
  @override
  AttendanceItemModel? get checkOut;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceItemModel _$AttendanceItemModelFromJson(Map<String, dynamic> json) {
  return _AttendanceItemModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceItemModel {
  DateTime get dateTime => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceItemModelCopyWith<AttendanceItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceItemModelCopyWith<$Res> {
  factory $AttendanceItemModelCopyWith(
          AttendanceItemModel value, $Res Function(AttendanceItemModel) then) =
      _$AttendanceItemModelCopyWithImpl<$Res, AttendanceItemModel>;
  @useResult
  $Res call({DateTime dateTime, double latitude, double longitude});
}

/// @nodoc
class _$AttendanceItemModelCopyWithImpl<$Res, $Val extends AttendanceItemModel>
    implements $AttendanceItemModelCopyWith<$Res> {
  _$AttendanceItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceItemModelImplCopyWith<$Res>
    implements $AttendanceItemModelCopyWith<$Res> {
  factory _$$AttendanceItemModelImplCopyWith(_$AttendanceItemModelImpl value,
          $Res Function(_$AttendanceItemModelImpl) then) =
      __$$AttendanceItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, double latitude, double longitude});
}

/// @nodoc
class __$$AttendanceItemModelImplCopyWithImpl<$Res>
    extends _$AttendanceItemModelCopyWithImpl<$Res, _$AttendanceItemModelImpl>
    implements _$$AttendanceItemModelImplCopyWith<$Res> {
  __$$AttendanceItemModelImplCopyWithImpl(_$AttendanceItemModelImpl _value,
      $Res Function(_$AttendanceItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$AttendanceItemModelImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceItemModelImpl implements _AttendanceItemModel {
  const _$AttendanceItemModelImpl(
      {required this.dateTime,
      required this.latitude,
      required this.longitude});

  factory _$AttendanceItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceItemModelImplFromJson(json);

  @override
  final DateTime dateTime;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'AttendanceItemModel(dateTime: $dateTime, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceItemModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceItemModelImplCopyWith<_$AttendanceItemModelImpl> get copyWith =>
      __$$AttendanceItemModelImplCopyWithImpl<_$AttendanceItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceItemModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceItemModel implements AttendanceItemModel {
  const factory _AttendanceItemModel(
      {required final DateTime dateTime,
      required final double latitude,
      required final double longitude}) = _$AttendanceItemModelImpl;

  factory _AttendanceItemModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceItemModelImpl.fromJson;

  @override
  DateTime get dateTime;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceItemModelImplCopyWith<_$AttendanceItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
