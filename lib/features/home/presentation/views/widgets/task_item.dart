
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';

class TaskItem extends StatefulWidget {
  TaskItem({required this.taskName});

  bool isDone=false;
  var taskName;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {

    double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;

    return  InkWell(
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(builder:
            //       (context) => EditTask(editController: widget.controllerOfSheet),));

          },
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
                    color: widget.isDone? Mycolors.green : Mycolors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(width: width*.05),
                Text('${widget.taskName}',
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: widget.isDone? Mycolors.green : Mycolors.blue
                  )
                ),
                Spacer(flex:9,),
                InkWell(
                  child: widget.isDone? Text('Done!',
                      style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Mycolors.green
                      ))
                  :Container(
                      decoration: BoxDecoration(
                        color: Mycolors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:IconButton(
                          onPressed: (){
                            widget.isDone=true;
                            setState(() {});
                          },
                          icon:Icon(Icons.check,size:30,weight: 9,color:Mycolors.white ,))
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        );
  }
}
