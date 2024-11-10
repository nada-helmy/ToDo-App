import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/dataLayer/task_provider.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/sittings_view.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    var themePro=Provider.of<TaskProvider>(context);
    return Drawer(
      width:width*.5 ,
      backgroundColor: themePro.theme=='light'?Mycolors.white:
      Mycolors.darkbackground,
      child: Column(
        children: [
          SizedBox(height: height*.07,),
          ListTile(
              leading: Icon(Icons.settings,color:Mycolors.blueGrey ,),
              title: Text('Sittings',style: Theme.of(context).
              textTheme.bodyMedium!.copyWith(
                color: Mycolors.blueGrey
              )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SittingsView(),));
              }
          ),
        ],
      ),
    );
  }
}
