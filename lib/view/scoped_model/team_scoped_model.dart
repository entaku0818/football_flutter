import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';
import 'package:scoped_model/scoped_model.dart';

class TeamScopedModel extends Model {
  List<Team> _teams = [];

  List<Team> get teams => _teams;

  TeamScopedModel() {
    fetch();
  }

  Future<List<Team>> fetch() async {
    final _teamsRepository = TeamsRepository();

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
