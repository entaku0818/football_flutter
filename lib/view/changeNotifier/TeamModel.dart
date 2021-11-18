import 'package:flutter/material.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';
class teamModel extends ChangeNotifier {
  List<Team> _teams = [];

  List<Team> get teams => _teams;


  Future<List<Team>> fetch() async{
    final _teamsRepository = TeamsRepository();
    notifyListeners();

    final result = await _teamsRepository.feachTeams();

    result.when(
      success: (teams) {
        _teams = teams;
        notifyListeners();
      },
      failure: (error) {
        notifyListeners();
      },
    );
  }
}