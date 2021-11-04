
import 'package:flutter/material.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';
import 'package:footballflutter/viewModel/team_view_model.dart';
import 'package:provider/provider.dart';
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
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'My App',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Los Angeles'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              ListTile(
                title: Text('Honolulu'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Dallas'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Seattle'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Tokyo'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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

  Future<List<Team>> fetch() async{
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