import 'package:flutter/material.dart';
import 'package:todo_tasks_app/presentationLayer/widgets/TaskItem.dart';

class Taskwidget extends StatelessWidget {
  const Taskwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) => TaskItem(),
          itemCount: 10,
      ),
    );
  }
}
