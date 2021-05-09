
import 'package:freezed_annotation/freezed_annotation.dart';
part 'team.freezed.dart';
part 'team.g.dart';


@freezed
abstract class Team with _$Team {
  const Team._();
  const factory Team({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String shortName,
    @Default('') String crestUrl,
    @Default('') String website,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) =>
      _$TeamFromJson(json);
}


//{
//"id": 57,
//"area": {
//"id": 2072,
//"name": "England"
//},
//"name": "Arsenal FC",
//"shortName": "Arsenal",
//"tla": "ARS",
//"crestUrl": "https://crests.football-data.org/57.svg",
//"address": "75 Drayton Park London N5 1BU",
//"phone": "+44 (020) 76195003",
//"website": "http://www.arsenal.com",
//"email": "info@arsenal.co.uk",
//"founded": 1886,
//"clubColors": "Red / White",
//"venue": "Emirates Stadium",
//"lastUpdated": "2020-11-26T02:15:20Z"
//},