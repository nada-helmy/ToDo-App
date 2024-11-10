import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/dataLayer/task_provider.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/sheet_form.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/task_item.dart';

class TaskSheet extends StatefulWidget {
   TaskSheet({super.key,});

   String? Function(String?)? validator;
   TextEditingController taskcontrol=TextEditingController();
   var formkey=SheetForm.formkey;

  @override
  State<TaskSheet> createState() => _TaskSheetState();
}

class _TaskSheetState extends State<TaskSheet> {
  @override
  Widget build(BuildContext context) {

    double height =MediaQuery.of(context).size.height;

    return  Container(
           margin: EdgeInsets.only(left: 8,right: 8),
           padding: EdgeInsets.all(10),
            height: height*.51,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Add new task',textAlign: TextAlign.center
                  ,style:Theme.of(context).textTheme.headlineMedium!
                    .copyWith(color: Mycolors.semiblack) ,),
                SizedBox(height: height*.03,),
                SheetForm(taskcontrol: widget.taskcontrol,),
                SizedBox(height: height*.04,),
                Consumer<TaskProvider>(
                  builder: (context, task, child) {
                    return ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Color(0xff3b5a73))
                      ),
                      onPressed: (){
                        task.listOfItems(TaskItem(taskName: widget.taskcontrol.text));
                         addTask();
                         setState(() {});
                      },
                      child:Text('Add',
                        style:Theme.of(context).textTheme.bodyMedium!
                            .copyWith(color: Mycolors.white) ,), );
                  },
                )
              ],
            ),
          );
  }
   addTask() {
    if(widget.formkey.currentState!.validate()==true) {
      Navigator.pop(context);
      widget.taskcontrol.clear();
   }
  }
}

