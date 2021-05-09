// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamResponse _$_$_TeamResponseFromJson(Map<String, dynamic> json) {
  return _$_TeamResponse(
    teams: (json['teams'] as List)
            ?.map((e) =>
                e == null ? null : Team.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_TeamResponseToJson(_$_TeamResponse instance) =>
    <String, dynamic>{
      'teams': instance.teams,
    };
