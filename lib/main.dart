import 'package:flutter/material.dart';
import 'package:footballflutter/view/HomeScreen.dart';
import 'package:footballflutter/viewModel/team_view_model.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
      MyApp(),

  );
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return MultiProvider(
           child: MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello World',
    theme: ThemeData(
    primarySwatch: Colors.indigo,
    ),
    home: HomeScreen(),
             routes: <String, WidgetBuilder> {
               '/home': (BuildContext context) => new HomeScreen(),

             },
    ),

            providers: [
               ChangeNotifierProvider(
                 create: (context) => TeamsModel(),
               )
             ],

    );
  }
}