// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SportEvent _$SportEventFromJson(Map<String, dynamic> json) {
  return _SportEvent.fromJson(json);
}

/// @nodoc
mixin _$SportEvent {
  String get iconUrl => throw _privateConstructorUsedError;
  String get league => throw _privateConstructorUsedError;
  String get teams => throw _privateConstructorUsedError;
  String get sportType => throw _privateConstructorUsedError;
  String get dateStarting => throw _privateConstructorUsedError;
  String get timeStarting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportEventCopyWith<SportEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportEventCopyWith<$Res> {
  factory $SportEventCopyWith(
          SportEvent value, $Res Function(SportEvent) then) =
      _$SportEventCopyWithImpl<$Res, SportEvent>;
  @useResult
  $Res call(
      {String iconUrl,
      String league,
      String teams,
      String sportType,
      String dateStarting,
      String timeStarting});
}

/// @nodoc
class _$SportEventCopyWithImpl<$Res, $Val extends SportEvent>
    implements $SportEventCopyWith<$Res> {
  _$SportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? league = null,
    Object? teams = null,
    Object? sportType = null,
    Object? dateStarting = null,
    Object? timeStarting = null,
  }) {
    return _then(_value.copyWith(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as String,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as String,
      sportType: null == sportType
          ? _value.sportType
          : sportType // ignore: cast_nullable_to_non_nullable
              as String,
      dateStarting: null == dateStarting
          ? _value.dateStarting
          : dateStarting // ignore: cast_nullable_to_non_nullable
              as String,
      timeStarting: null == timeStarting
          ? _value.timeStarting
          : timeStarting // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportEventImplCopyWith<$Res>
    implements $SportEventCopyWith<$Res> {
  factory _$$SportEventImplCopyWith(
          _$SportEventImpl value, $Res Function(_$SportEventImpl) then) =
      __$$SportEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String iconUrl,
      String league,
      String teams,
      String sportType,
      String dateStarting,
      String timeStarting});
}

/// @nodoc
class __$$SportEventImplCopyWithImpl<$Res>
    extends _$SportEventCopyWithImpl<$Res, _$SportEventImpl>
    implements _$$SportEventImplCopyWith<$Res> {
  __$$SportEventImplCopyWithImpl(
      _$SportEventImpl _value, $Res Function(_$SportEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? league = null,
    Object? teams = null,
    Object? sportType = null,
    Object? dateStarting = null,
    Object? timeStarting = null,
  }) {
    return _then(_$SportEventImpl(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as String,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as String,
      sportType: null == sportType
          ? _value.sportType
          : sportType // ignore: cast_nullable_to_non_nullable
              as String,
      dateStarting: null == dateStarting
          ? _value.dateStarting
          : dateStarting // ignore: cast_nullable_to_non_nullable
              as String,
      timeStarting: null == timeStarting
          ? _value.timeStarting
          : timeStarting // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportEventImpl implements _SportEvent {
  const _$SportEventImpl(
      {required this.iconUrl,
      required this.league,
      required this.teams,
      required this.sportType,
      required this.dateStarting,
      required this.timeStarting});

  factory _$SportEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportEventImplFromJson(json);

  @override
  final String iconUrl;
  @override
  final String league;
  @override
  final String teams;
  @override
  final String sportType;
  @override
  final String dateStarting;
  @override
  final String timeStarting;

  @override
  String toString() {
    return 'SportEvent(iconUrl: $iconUrl, league: $league, teams: $teams, sportType: $sportType, dateStarting: $dateStarting, timeStarting: $timeStarting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportEventImpl &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.teams, teams) || other.teams == teams) &&
            (identical(other.sportType, sportType) ||
                other.sportType == sportType) &&
            (identical(other.dateStarting, dateStarting) ||
                other.dateStarting == dateStarting) &&
            (identical(other.timeStarting, timeStarting) ||
                other.timeStarting == timeStarting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iconUrl, league, teams,
      sportType, dateStarting, timeStarting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportEventImplCopyWith<_$SportEventImpl> get copyWith =>
      __$$SportEventImplCopyWithImpl<_$SportEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportEventImplToJson(
      this,
    );
  }
}

abstract class _SportEvent implements SportEvent {
  const factory _SportEvent(
      {required final String iconUrl,
      required final String league,
      required final String teams,
      required final String sportType,
      required final String dateStarting,
      required final String timeStarting}) = _$SportEventImpl;

  factory _SportEvent.fromJson(Map<String, dynamic> json) =
      _$SportEventImpl.fromJson;

  @override
  String get iconUrl;
  @override
  String get league;
  @override
  String get teams;
  @override
  String get sportType;
  @override
  String get dateStarting;
  @override
  String get timeStarting;
  @override
  @JsonKey(ignore: true)
  _$$SportEventImplCopyWith<_$SportEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
