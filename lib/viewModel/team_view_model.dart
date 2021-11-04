import 'package:flutter/material.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';


class TeamsModel extends ChangeNotifier {
    List<Team> _teams = <Team>[];

    List<Team> get teams => _teams;

    bool isLoading = false;


    Future<List<Team>> fetch() async{
      final _teamsRepository = TeamsRepository();
      isLoading = true;
      notifyListeners();

      final result = await _teamsRepository.feachTeams();

      result.when(
        success: (teams) {
          _teams = teams;
          notifyListeners();
        },
        failure: (error) {
          isLoading = false;
          notifyListeners();
        },
      );
    }
   }
