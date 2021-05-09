import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:footballflutter/model/team.dart';
import 'package:footballflutter/repositories/teams_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



final teamsProvider = FutureProvider<List<Team>>((ref) {
  final _teamsRepository = TeamsRepository();
  return _teamsRepository.feachTeams();

});



void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}



class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var provider = useProvider(teamsProvider);

    print(provider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example')),
        body: Center(
          child: provider.when(
              data: (data) => ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${data[index].name}'),
                  );
                },
              ),
              loading: () => CircularProgressIndicator(),
              error: (error, stack) => Text('Error!')),
        )
        ),
    );
  }
}