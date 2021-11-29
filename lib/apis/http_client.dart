import 'package:dio/dio.dart' hide Headers;
import 'package:footballflutter/model/team_response.dart';
import 'package:retrofit/retrofit.dart';

part 'http_client.g.dart';

@RestApi(baseUrl: 'https://api.football-data.org')
abstract class HttpClient {
  factory HttpClient(Dio dio) = _HttpClient;

  @Headers(
      <String, dynamic>{'Content-Type': 'application/json', 'X-Auth-Token': ''})
  @GET('/v2/competitions/PL/teams')
  Future<TeamResponse> feachTeams();
}
