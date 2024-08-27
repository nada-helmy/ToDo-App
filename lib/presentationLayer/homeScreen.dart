import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
     double width =MediaQuery.of(context).size.width;
     double height =MediaQuery.of(context).size.height;
     

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('ToDo list'),
        toolbarHeight:height*.2 ,
      ),
    ));
  }
}
