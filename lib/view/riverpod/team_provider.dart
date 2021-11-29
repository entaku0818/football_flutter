import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';

final TeamStateNotifierProvider =
    StateNotifierProvider<TeamStateNotifier, List<Team>>(
  (ref) => TeamStateNotifier([]),
);

class TeamStateNotifier extends StateNotifier<List<Team>> {
  TeamStateNotifier(List<Team> state) : super(state) {
    _fetch();
  }

  Future<List<Team>> _fetch() async {
    final _teamsRepository = TeamsRepository();

    final result = await _teamsRepository.feachTeams();

    result.when(
      success: (teams) {
        state = teams;
      },
      failure: (error) {},
    );
  }
}
