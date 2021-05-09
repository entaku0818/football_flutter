import 'package:freezed_annotation/freezed_annotation.dart';

import 'team.dart';
part 'team_response.freezed.dart';
part 'team_response.g.dart';

@freezed
abstract class TeamResponse implements _$TeamResponse {
  // :TODO まだ使ってないけど、後で絶対使うので残しとく
  const TeamResponse._();
  const factory TeamResponse({
    @Default([]) List<Team> teams,
  }) = _TeamResponse;

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);
}
