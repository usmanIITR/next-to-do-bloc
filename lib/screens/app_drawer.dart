import 'package:flutter/material.dart';
import 'package:next_to_do/screens/task_screen.dart';
import 'package:next_to_do/screens/trash_screen.dart';

import '../blocs/block_exports.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: 20,
              ),
              color: Colors.blueGrey,
              child: Text("Task Drawer"),
            ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(TasksScreen.id),
                  child: ListTile(
                    leading: const Icon(Icons.folder_special),
                    title: const Text("My Tasks"),
                    trailing: Text("${state.allTasks.length}"),
                  ),
                );
              },
            ),
            const Divider(),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(TrashScreen.id),
                  child: ListTile(
                    leading: const Icon(Icons.delete),
                    title: const Text("Trash"),
                    trailing: Text("${state.removedTasks.length}"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
