import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../styles/mycolors.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return Slidable(
        // Specify a key if the Slidable is dismissible.
        key: const ValueKey(0),
        // The start action pane is the one at the left or the top side.
        startActionPane: ActionPane(
          // A motion is a widget used to control how the pane animates.
          motion: const BehindMotion(),

          // A pane can dismiss the Slidable.
          dismissible: DismissiblePane(onDismissed: () {}),

          // All actions are defined in the children parameter.
          children: [
            // A SlidableAction can have an icon and/or a label.
            SlidableAction(
              onPressed: (context) {},//todo
              backgroundColor: Color(0xFFFE4A49),
              borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(12),
                  topLeft:Radius.circular(12)),
              autoClose: true,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          margin:EdgeInsets.all(12) ,
          decoration: BoxDecoration(
            color: Mycolors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
            ),
          child: Row(
            children: [
              Container(
                width:7 ,
                height:height*.12 ,
                margin: EdgeInsets.only(left: 15,top: 11,bottom: 11),
                decoration: BoxDecoration(
                  color: Mycolors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(width: width*.05),
              Text('study 2 hours',
                style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Mycolors.blue
                ),),
              SizedBox(width: width*.25),
              Container(
                decoration: BoxDecoration(
                  color: Mycolors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                ),
                child:IconButton(
                    onPressed: (){},//todo
                    icon:Icon(Icons.check,size:30,weight: 9,color:Mycolors.white ,))
              )
            ],
          ),
        ),
      );
  }
}
