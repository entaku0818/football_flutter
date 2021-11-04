import 'package:flutter/cupertino.dart';
import 'package:footballflutter/apis/http_client.dart';
import 'package:footballflutter/apis/result.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/model/team_response.dart';
import 'package:dio/dio.dart';



class TeamsRepository  {

  final HttpClient _client;
  TeamsRepository([HttpClient client]) : _client = client ?? HttpClient(Dio());



  Future<Result<List<Team>>> feachTeams() async {
    try {
      return await _client.feachTeams().then((response) {
        return Result.success(response.teams);
      });
    } catch (error) {
      return Result.failure(error);
    }
  }

}
