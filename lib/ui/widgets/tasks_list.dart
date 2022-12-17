import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_to_do/ui/widgets/task_tile.dart';

import '../../models/task.dart';

class TasksList extends StatelessWidget {
  TasksList({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          var task = taskList[index];
          return TaskTile(task: task);
        },
      ),
    );
  }
}
