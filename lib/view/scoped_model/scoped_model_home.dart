import 'package:flutter/material.dart';
import 'package:footballflutter/view/scoped_model/team_scoped_model.dart';
import 'package:scoped_model/scoped_model.dart';

import '../Header.dart';

// Create our App, which will provide the `CounterModel` to
// all children that require it!
class ScopedModelHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<TeamScopedModel>(
      model: TeamScopedModel(),
      child: ScopedModelDescendant<TeamScopedModel>(
        builder: (context, child, model) => Scaffold(
          appBar: AppBar(
            title: const Text('チーム一覧'),
          ),
          drawer: Header(),
          body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(model.teams[index].name),
                ),
              );
            },
            itemCount: model.teams.length,
          ),
        ),
      ),
    );
  }
}
