// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$_$_TeamFromJson(Map<String, dynamic> json) {
  return _$_Team(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    shortName: json['shortName'] as String ?? '',
    crestUrl: json['crestUrl'] as String ?? '',
    website: json['website'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'crestUrl': instance.crestUrl,
      'website': instance.website,
    };
