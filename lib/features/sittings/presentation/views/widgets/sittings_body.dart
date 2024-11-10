import 'package:flutter/material.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/widgets/mode_bottom_sheet.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';

class SittingsBody extends StatefulWidget {
  @override
  State<SittingsBody> createState() => _SittingsBodyState();
}

class _SittingsBodyState extends State<SittingsBody> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: height * .05),
          Text('Mode',
              style: Theme.of(context).textTheme.headlineSmall!
                  .copyWith(color: Mycolors.semiblack)),
          SizedBox(height: height * .02),
          ModeBottomSheet()
        ],
      ),
    );
  }
}
