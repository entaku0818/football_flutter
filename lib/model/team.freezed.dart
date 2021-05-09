// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
class _$TeamTearOff {
  const _$TeamTearOff();

// ignore: unused_element
  _Team call(
      {int id = 0,
      String name = '',
      String shortName = '',
      String crestUrl = '',
      String website = ''}) {
    return _Team(
      id: id,
      name: name,
      shortName: shortName,
      crestUrl: crestUrl,
      website: website,
    );
  }

// ignore: unused_element
  Team fromJson(Map<String, Object> json) {
    return Team.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Team = _$TeamTearOff();

/// @nodoc
mixin _$Team {
  int get id;
  String get name;
  String get shortName;
  String get crestUrl;
  String get website;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String shortName, String crestUrl, String website});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object shortName = freezed,
    Object crestUrl = freezed,
    Object website = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      shortName: shortName == freezed ? _value.shortName : shortName as String,
      crestUrl: crestUrl == freezed ? _value.crestUrl : crestUrl as String,
      website: website == freezed ? _value.website : website as String,
    ));
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String shortName, String crestUrl, String website});
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object shortName = freezed,
    Object crestUrl = freezed,
    Object website = freezed,
  }) {
    return _then(_Team(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      shortName: shortName == freezed ? _value.shortName : shortName as String,
      crestUrl: crestUrl == freezed ? _value.crestUrl : crestUrl as String,
      website: website == freezed ? _value.website : website as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Team extends _Team {
  const _$_Team(
      {this.id = 0,
      this.name = '',
      this.shortName = '',
      this.crestUrl = '',
      this.website = ''})
      : assert(id != null),
        assert(name != null),
        assert(shortName != null),
        assert(crestUrl != null),
        assert(website != null),
        super._();

  factory _$_Team.fromJson(Map<String, dynamic> json) =>
      _$_$_TeamFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String shortName;
  @JsonKey(defaultValue: '')
  @override
  final String crestUrl;
  @JsonKey(defaultValue: '')
  @override
  final String website;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, shortName: $shortName, crestUrl: $crestUrl, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Team &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.crestUrl, crestUrl) ||
                const DeepCollectionEquality()
                    .equals(other.crestUrl, crestUrl)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality().equals(other.website, website)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(crestUrl) ^
      const DeepCollectionEquality().hash(website);

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TeamToJson(this);
  }
}

abstract class _Team extends Team {
  const _Team._() : super._();
  const factory _Team(
      {int id,
      String name,
      String shortName,
      String crestUrl,
      String website}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get shortName;
  @override
  String get crestUrl;
  @override
  String get website;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith;
}
