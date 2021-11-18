import 'package:flutter/material.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';

import '../Header.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Team> _teams = <Team>[];
  var isLoading = true;

  void initState() {
    super.initState();
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('チーム一覧'),
      ),
      drawer: Header(),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(_teams[index].name),
            ),
          );
        },
        itemCount: _teams.length,
      ),
    );
  }

  Future<List<Team>> fetch() async {
    final _teamsRepository = TeamsRepository();

    final result = await _teamsRepository.feachTeams();

    result.when(
      success: (teams) {
        setState(() {
          _teams = teams;
        });
      },
      failure: (error) {
        isLoading = false;
      },
    );
  }
}
