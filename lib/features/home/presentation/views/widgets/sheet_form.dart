import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';

class SheetForm extends StatefulWidget {
   SheetForm({super.key,
     required this.taskcontrol});

  TextEditingController taskcontrol;
  String  taskdate =DateFormat('dd MMMM yyyy').format(DateTime.now());
  DateTime? selectedDate;
   static var formkey=GlobalKey<FormState>();

  @override
  State<SheetForm> createState() => _SheetFormState();
}

class _SheetFormState extends State<SheetForm> {
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;

    return Form( //this column for the form components
      key:SheetForm.formkey ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            validator:(tskValu) {
              if(tskValu==null || tskValu.isEmpty){
                return'please enter your task';
              }
              return null;
            },
            controller: widget.taskcontrol,
            cursorColor:Mycolors.blue ,
            cursorErrorColor: Mycolors.red,
            style:Theme.of(context).textTheme.bodyMedium!
                .copyWith(color:Colors.blueGrey) ,
            decoration: InputDecoration(
              hintText: 'enter your task',
              hintStyle: Theme.of(context).textTheme.bodySmall!
                  .copyWith(color: Mycolors.grey) ,
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Mycolors.grey,
                      width:2,
                      style: BorderStyle.solid
                  )
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Mycolors.grey,
                      width: 3,
                      style: BorderStyle.solid
                  )
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Mycolors.background,
                      width: 3,
                      style: BorderStyle.solid
                  )),
              focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Mycolors.red,
                      width: 3,
                      style: BorderStyle.solid
                  )
              ),
            ),
          ),
          SizedBox(height: height*.05,),
          Text('Select date',style:Theme.of(context).textTheme.headlineSmall!
              .copyWith(color: Mycolors.semiblack) ,),
          SizedBox(height: height*.02,),
          InkWell(
            onTap: () {
              ShowCalender();
            },
            child: Text(
              '${widget.taskdate}',
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.bodyMedium!
                  .copyWith(color: Mycolors.grey) ,),
          ),
        ],
      ),
    );
  }

  Future<DateTime?> ShowCalender()async {
    var chosenDate= await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
    );
    if (chosenDate != null) {
      widget.taskdate = formatDate(chosenDate);
      setState(() {});
    }
    widget.selectedDate=chosenDate;
    return null;
  }

  formatDate(DateTime? date) {
    if (date != null) {
      return DateFormat('dd MMMM yyyy').format(date);
    }
    return null;
  }

}
