import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: Text('statefulWidget'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('changeNotifier'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/changeNotifier');
            },
          ),
          ListTile(
            title: Text('scopedModel'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/scopedModel');
            },
          ),
          ListTile(
            title: Text('RiverpodHome'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/RiverpodHome');
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
    );
  }
}
