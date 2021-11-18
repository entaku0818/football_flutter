
import 'package:flutter/material.dart';
import 'package:footballflutter/viewModel/team_view_model.dart';
import 'package:provider/provider.dart';

import 'TeamModel.dart';
class ChangeNotifier extends StatefulWidget {
  ChangeNotifier({Key key}) : super(key: key);

  _ChangeNotifier createState() => _ChangeNotifier();
}

class _ChangeNotifier extends State<ChangeNotifier> {

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: Scaffold(
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
         body:  Consumer<TeamsModel>(
                       builder: (BuildContext context, TeamsModel value, Widget child) {
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
                  }
                    )

          ,

    ),     providers: [
                   ChangeNotifierProvider(
                    create: (context) => teamModel(),
            )
           ],
    );
  }
  
}