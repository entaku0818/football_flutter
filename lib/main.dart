import 'package:flutter/material.dart';
import 'package:footballflutter/view/changeNotifier/change_notifier.dart';
import 'package:footballflutter/view/changeNotifier/team_model.dart';
import 'package:footballflutter/view/statefulWidget/HomeScreen.dart';
import 'package:provider/provider.dart';

import 'view/scoped_model/scoped_model_home.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomeScreen(),
        '/scopedModel': (BuildContext context) => ScopedModelHome(),
        '/changeNotifier': (BuildContext context) => ChangeNotifierProvider(
              create: (context) => TeamModel(),
              child: ChangeNotifierHome(),
            )
      },
    );
  }
}
