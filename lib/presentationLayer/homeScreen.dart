import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todo_tasks_app/presentationLayer/styles/mycolors.dart';

import 'SittingTap.dart';
import 'TaskTab.dart';
import 'widgets/sheetTask.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  int selectedtab=0;
  TextEditingController taskcontrol=TextEditingController();
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     //double width =MediaQuery.of(context).size.width;
     double height =MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('ToDo list'),
        toolbarHeight:height*.15 ,
      ),
      body:tabs[widget.selectedtab] ,
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
      floatingActionButton:Container(
         decoration: BoxDecoration(
           color: Mycolors.background,
           shape: BoxShape.circle,
    ),
        child: IconButton(
            onPressed: (){
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SheetTask(taskcontrol: widget.taskcontrol);
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
             child: Icon(Icons.add,size: 30,color:Mycolors.white ,))),
      ) ,
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:widget.selectedtab ,
        onTap:(valueGetbyUser) {
          widget.selectedtab=valueGetbyUser;
          setState(() {});
        },
        items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.list,size: 30,) ,
              label: 'list'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 30,),
              label:'settings'
              ,),
          ]),
    ));
  }
  List<Widget> tabs=[
      TaskTab(),
     SittingTab(),
  ];

}
