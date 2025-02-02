// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceState {
  GeoPoint? get initLocation => throw _privateConstructorUsedError;
  GeoPoint? get currentLocation => throw _privateConstructorUsedError;
  GeoPoint? get previousLocation => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call(
      {GeoPoint? initLocation,
      GeoPoint? currentLocation,
      GeoPoint? previousLocation,
      double radius,
      String? error});
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initLocation = freezed,
    Object? currentLocation = freezed,
    Object? previousLocation = freezed,
    Object? radius = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      initLocation: freezed == initLocation
          ? _value.initLocation
          : initLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      previousLocation: freezed == previousLocation
          ? _value.previousLocation
          : previousLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceStateImplCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$AttendanceStateImplCopyWith(_$AttendanceStateImpl value,
          $Res Function(_$AttendanceStateImpl) then) =
      __$$AttendanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GeoPoint? initLocation,
      GeoPoint? currentLocation,
      GeoPoint? previousLocation,
      double radius,
      String? error});
}

/// @nodoc
class __$$AttendanceStateImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateImpl>
    implements _$$AttendanceStateImplCopyWith<$Res> {
  __$$AttendanceStateImplCopyWithImpl(
      _$AttendanceStateImpl _value, $Res Function(_$AttendanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initLocation = freezed,
    Object? currentLocation = freezed,
    Object? previousLocation = freezed,
    Object? radius = null,
    Object? error = freezed,
  }) {
    return _then(_$AttendanceStateImpl(
      initLocation: freezed == initLocation
          ? _value.initLocation
          : initLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      previousLocation: freezed == previousLocation
          ? _value.previousLocation
          : previousLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AttendanceStateImpl extends _AttendanceState {
  const _$AttendanceStateImpl(
      {this.initLocation,
      this.currentLocation,
      this.previousLocation,
      this.radius = 20.0,
      this.error})
      : super._();

  @override
  final GeoPoint? initLocation;
  @override
  final GeoPoint? currentLocation;
  @override
  final GeoPoint? previousLocation;
  @override
  @JsonKey()
  final double radius;
  @override
  final String? error;

  @override
  String toString() {
    return 'AttendanceState(initLocation: $initLocation, currentLocation: $currentLocation, previousLocation: $previousLocation, radius: $radius, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateImpl &&
            (identical(other.initLocation, initLocation) ||
                other.initLocation == initLocation) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.previousLocation, previousLocation) ||
                other.previousLocation == previousLocation) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initLocation, currentLocation,
      previousLocation, radius, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      __$$AttendanceStateImplCopyWithImpl<_$AttendanceStateImpl>(
          this, _$identity);
}

abstract class _AttendanceState extends AttendanceState {
  const factory _AttendanceState(
      {final GeoPoint? initLocation,
      final GeoPoint? currentLocation,
      final GeoPoint? previousLocation,
      final double radius,
      final String? error}) = _$AttendanceStateImpl;
  const _AttendanceState._() : super._();

  @override
  GeoPoint? get initLocation;
  @override
  GeoPoint? get currentLocation;
  @override
  GeoPoint? get previousLocation;
  @override
  double get radius;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
