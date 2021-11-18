import 'package:flutter/material.dart';
import 'package:footballflutter/view/Header.dart';
import 'package:footballflutter/view/changeNotifier/team_model.dart';
import 'package:provider/provider.dart';

class ChangeNotifierHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('チーム一覧'),
        ),
        drawer: Header(),
        body: Consumer<TeamModel>(
            builder: (BuildContext context, TeamModel value, Widget child) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(value.teams[index].name),
                ),
              );
            },
            itemCount: value.teams.length,
          );
        }));
  }
}
