import 'package:flutter/material.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/widgets/sittings_container.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SittingsContainer(
      sheet_text: 'English',
      requiredMethod: langMethod,
    );
  }

  langMethod() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) =>langColumnSheet(),
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(16))
        )
    );
  }

  langColumnSheet() {
    return Container(
      height:MediaQuery.of(context).size.height*.5 ,
      width: MediaQuery.of(context).size.width*.85,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('English', style: Theme.of(context).textTheme.headlineSmall!
                .copyWith(color: Mycolors.blueGrey)),
            SizedBox(height: 20),
            Text('Arabic', style: Theme.of(context).textTheme.headlineSmall!
                .copyWith(color: Mycolors.blueGrey)),
          ],
        ),
      ),
    );
  }
}
