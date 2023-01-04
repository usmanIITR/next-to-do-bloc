import 'package:flutter/material.dart';
import 'package:next_to_do/services/guid_gen.dart';
import '../../blocs/block_exports.dart';
import '../../models/task.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "Add a Task",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //New Comment added
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: const InputDecoration(
              label: Text("Title"),
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  var task =
                      Task(title: titleController.text, id: GUIDGen.generate());
                  context.read<TasksBloc>().add(AddTask(task: task));
                  Navigator.of(context).pop();
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
