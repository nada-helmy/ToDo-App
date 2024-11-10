import 'package:flutter/material.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/task_sheet.dart';

class AddActionButton extends StatelessWidget {
   AddActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return TaskSheet();
              },
            );
          },
          icon:Container(
              margin:EdgeInsets.all(5) ,
              padding:EdgeInsets.all(11) ,
              decoration: BoxDecoration(
                color:Mycolors.blue ,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add,size: 30,color:Mycolors.white ,)),
    );
  }
}
