import 'package:flutter/material.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';

class SittingsContainer extends StatefulWidget {
   SittingsContainer({super.key,
     required this.requiredMethod,
     required this.sheet_text
   });

  Function requiredMethod;
  String sheet_text;

  @override
  State<SittingsContainer> createState() => _SittingsContainerState();
}

class _SittingsContainerState extends State<SittingsContainer> {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal:20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Mycolors.white,
        border:Border.all(color: Colors.blueGrey,width:2) ,
        shape: BoxShape.rectangle,
      ),
      child:Row(
        children: [
          Text('${widget.sheet_text}',style:Theme.of(context).textTheme.bodySmall
                      !.copyWith(color:Mycolors.blueGrey )),
          Spacer(),
          IconButton(
            onPressed: (){
              widget.requiredMethod();
              setState(() {});
            },
            icon:const Icon(Icons.arrow_drop_down,size: 30,))
        ],
      ) ,
    );
  }
}
