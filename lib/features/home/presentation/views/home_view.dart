import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/add_action_button.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/home_body.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/home_drawer.dart';

class HomeView extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
     double height =MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(
          title: Text('ToDo list'),
          toolbarHeight:height*.15 ,
          actions: [
            IconButton(
                onPressed: (){
                  _scaffoldKey.currentState?.openEndDrawer();
                },
                icon: Icon(Icons.menu, color: Colors.white, size: 30), )
          ],
        ),
        endDrawer: HomeDrawer(),
        body:HomeBody() ,
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
        floatingActionButton:AddActionButton() ,
      ),
    );
  }
}
