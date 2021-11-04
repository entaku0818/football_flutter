import 'package:freezed_annotation/freezed_annotation.dart';

import 'team.dart';
part 'team_response.freezed.dart';
part 'team_response.g.dart';

@freezed
abstract class TeamResponse implements _$TeamResponse {
  const TeamResponse._();
  const factory TeamResponse({
    @Default([]) List<Team> teams,
  }) = _TeamResponse;

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);
}
