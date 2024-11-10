import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/dataLayer/task_provider.dart';

class ModeRow extends StatelessWidget {
   ModeRow({super.key,required this.theme_mode});

  String theme_mode;
  @override
  Widget build(BuildContext context) {
    var themePro=Provider.of<TaskProvider>(context);
    return Row(
      children: [
        Text(theme_mode, style: Theme.of(context).textTheme.headlineSmall!
            .copyWith(color: Mycolors.blueGrey)),
        Spacer(),
        themePro.theme==theme_mode?
        Icon(Icons.check,size: 30,color: Mycolors.blueGrey,)
            :Container(),
      ],
    );
  }
}
