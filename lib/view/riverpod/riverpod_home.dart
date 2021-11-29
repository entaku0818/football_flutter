import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:footballflutter/view/riverpod/team_provider.dart';

import '../Header.dart';

class RiverpodHome extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(TeamStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('チーム一覧'),
      ),
      drawer: Header(),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(teams[index].name),
            ),
          );
        },
        itemCount: teams.length,
      ),
    );
  }
}
