import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/dataLayer/task_provider.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    var _taskProvider = Provider.of<TaskProvider>(context);

    return Consumer<TaskProvider>(
        builder: (context, task, child) {
          return Expanded(
            child: task.taskItems.isEmpty ?
             Text(' Press the (+) button to add tasks',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall!
                 .copyWith(color:_taskProvider.theme=='dark'?
                     Mycolors.background:Mycolors.darkorange),) :
             ListView.builder(
                 itemCount: task.taskItems.length,
                 itemBuilder: (context, index) {
                   return Slidable(
                     // Specify a key if the Slidable is dismissible.
                       key: ValueKey(_taskProvider.taskItems[index]),
                       // The start action pane is the one at the left or the top side.
                       startActionPane: ActionPane(
                         // A motion is a widget used to control how the pane animates.
                         motion: const BehindMotion(),

                         // A pane can dismiss the Slidable.
                         dismissible: DismissiblePane(onDismissed: () {
                           _taskProvider.removeTask(index);
                         }),

                         // All actions are defined in the children parameter.
                         children: [
                           // A SlidableAction can have an icon and/or a label.
                           SlidableAction(
                             onPressed: (context) {},
                             backgroundColor: Color(0xFFFE4A49),
                             borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(12),
                                 topLeft: Radius.circular(12)),
                             autoClose: true,
                             foregroundColor: Colors.white,
                             icon: Icons.delete,
                             label: 'Delete',
                           ),
                         ],
                       ),
                       child:task.taskItems[index]);
                 }
             ),
          );
        }
    );
  }
}
