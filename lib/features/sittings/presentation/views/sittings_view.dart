import 'package:flutter/material.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/widgets/sittings_body.dart';

class SittingsView extends StatelessWidget {
  static const String routeName='set';
  const SittingsView({super.key});

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;

    return  Scaffold(
        appBar: AppBar(
          title: Text('Sittings'),
          toolbarHeight:height*.15 ,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back,
                color: Mycolors.white,
                size: 26,)),
        ),
        body: SittingsBody());
  }
}
