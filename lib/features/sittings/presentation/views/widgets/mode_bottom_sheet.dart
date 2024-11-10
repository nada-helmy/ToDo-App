import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_tasks_app/dataLayer/task_provider.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/widgets/mode_row.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/widgets/sittings_container.dart';

class ModeBottomSheet extends StatefulWidget {
  const ModeBottomSheet({super.key});

  @override
  State<ModeBottomSheet> createState() => _ModeBottomSheetState();
}

class _ModeBottomSheetState extends State<ModeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var themePro=Provider.of<TaskProvider>(context);
    
    return SittingsContainer(
      sheet_text: themePro.theme,
      requiredMethod: modeMethod,
    );
  }

  modeMethod() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) =>modeColumnSheet(),
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20))
        )
    );
  }

  modeColumnSheet() {
    var themePro=Provider.of<TaskProvider>(context);
    return Container(
      height:MediaQuery.of(context).size.height*.5,
      width: MediaQuery.of(context).size.width*1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                themePro.changeTheme('light');
              },
              child: ModeRow(
                theme_mode: 'light',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                themePro.changeTheme('dark');
              },
              child: ModeRow(
                theme_mode: 'dark',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
