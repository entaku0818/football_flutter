// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'team_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TeamResponse _$TeamResponseFromJson(Map<String, dynamic> json) {
  return _TeamResponse.fromJson(json);
}

/// @nodoc
class _$TeamResponseTearOff {
  const _$TeamResponseTearOff();

// ignore: unused_element
  _TeamResponse call({List<Team> teams = const []}) {
    return _TeamResponse(
      teams: teams,
    );
  }

// ignore: unused_element
  TeamResponse fromJson(Map<String, Object> json) {
    return TeamResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TeamResponse = _$TeamResponseTearOff();

/// @nodoc
mixin _$TeamResponse {
  List<Team> get teams;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TeamResponseCopyWith<TeamResponse> get copyWith;
}

/// @nodoc
abstract class $TeamResponseCopyWith<$Res> {
  factory $TeamResponseCopyWith(
          TeamResponse value, $Res Function(TeamResponse) then) =
      _$TeamResponseCopyWithImpl<$Res>;
  $Res call({List<Team> teams});
}

/// @nodoc
class _$TeamResponseCopyWithImpl<$Res> implements $TeamResponseCopyWith<$Res> {
  _$TeamResponseCopyWithImpl(this._value, this._then);

  final TeamResponse _value;
  // ignore: unused_field
  final $Res Function(TeamResponse) _then;

  @override
  $Res call({
    Object teams = freezed,
  }) {
    return _then(_value.copyWith(
      teams: teams == freezed ? _value.teams : teams as List<Team>,
    ));
  }
}

/// @nodoc
abstract class _$TeamResponseCopyWith<$Res>
    implements $TeamResponseCopyWith<$Res> {
  factory _$TeamResponseCopyWith(
          _TeamResponse value, $Res Function(_TeamResponse) then) =
      __$TeamResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Team> teams});
}

/// @nodoc
class __$TeamResponseCopyWithImpl<$Res> extends _$TeamResponseCopyWithImpl<$Res>
    implements _$TeamResponseCopyWith<$Res> {
  __$TeamResponseCopyWithImpl(
      _TeamResponse _value, $Res Function(_TeamResponse) _then)
      : super(_value, (v) => _then(v as _TeamResponse));

  @override
  _TeamResponse get _value => super._value as _TeamResponse;

  @override
  $Res call({
    Object teams = freezed,
  }) {
    return _then(_TeamResponse(
      teams: teams == freezed ? _value.teams : teams as List<Team>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TeamResponse extends _TeamResponse {
  const _$_TeamResponse({this.teams = const []})
      : assert(teams != null),
        super._();

  factory _$_TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TeamResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<Team> teams;

  @override
  String toString() {
    return 'TeamResponse(teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeamResponse &&
            (identical(other.teams, teams) ||
                const DeepCollectionEquality().equals(other.teams, teams)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teams);

  @JsonKey(ignore: true)
  @override
  _$TeamResponseCopyWith<_TeamResponse> get copyWith =>
      __$TeamResponseCopyWithImpl<_TeamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TeamResponseToJson(this);
  }
}

abstract class _TeamResponse extends TeamResponse {
  const _TeamResponse._() : super._();
  const factory _TeamResponse({List<Team> teams}) = _$_TeamResponse;

  factory _TeamResponse.fromJson(Map<String, dynamic> json) =
      _$_TeamResponse.fromJson;

  @override
  List<Team> get teams;
  @override
  @JsonKey(ignore: true)
  _$TeamResponseCopyWith<_TeamResponse> get copyWith;
}
