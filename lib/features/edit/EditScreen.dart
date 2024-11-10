import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_tasks_app/core/styles/mycolors.dart';

//ModalRoute.of(context)!
//         .addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearching));

class EditTask extends StatefulWidget {

  //EditTask({required this.editController});

  // TextEditingController editController=
  //               TextEditingController(text:editController.text ,);
  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {


  String  tskdate =DateFormat('dd MMMM yyyy').format(DateTime.now());

  String? Function(String?)? validator;

  var formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double height =MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(left: 8,right: 8),
      padding: EdgeInsets.all(10),
      height: height*.51,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text('Edit the task',textAlign: TextAlign.center
            ,style:Theme.of(context).textTheme.headlineMedium!
                .copyWith(color: Mycolors.semiblack) ,),
          SizedBox(height: height*.03,),
          Form( //this column for the form components
            key:formkey ,
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
                  //controller: widget.editController,
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
                    '${tskdate}',
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.bodyMedium!
                        .copyWith(color: Mycolors.grey) ,),
                ),
              ],
            ),
          ),
          SizedBox(height: height*.04,),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                    Color(0xff3b5a73))//0xff415b5b/
            ),
            onPressed: (){
              //addTask();
            },
            child:Text('Save Changes',
              style:Theme.of(context).textTheme.bodyMedium!
                  .copyWith(color: Mycolors.white) ,), )
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
      tskdate = formatDate(chosenDate);
      setState(() {});
    }
    return null;
  }

  formatDate(DateTime? date) {
    if (date != null) {
      return DateFormat('dd MMMM yyyy').format(date);
    }
    return null;
  }
}
