import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_tasks_app/presentationLayer/styles/mycolors.dart';

class SheetTask extends StatefulWidget {
   SheetTask({super.key,required this.taskcontrol});

   TextEditingController taskcontrol;
   String  tskdate =DateFormat('dd MMMM yyyy').format(DateTime.now());
   String? Function(String?)? validator;
   var formkey=GlobalKey<FormState>();
  @override
  State<SheetTask> createState() => _SheetTaskState();
}

class _SheetTaskState extends State<SheetTask> {
  @override
  Widget build(BuildContext context) {

    double height =MediaQuery.of(context).size.height;

    return  Container(
           margin: EdgeInsets.only(left: 8,right: 8),
           padding: EdgeInsets.all(10),
            height: height*.51,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Add new task',textAlign: TextAlign.center
                  ,style:Theme.of(context).textTheme.headlineMedium!
                    .copyWith(color: Mycolors.semiblack) ,),
                SizedBox(height: height*.03,),
                Form( //this column for the form components
                  key:widget.formkey ,
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
                        '${widget.tskdate}',
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
                    backgroundColor: MaterialStatePropertyAll(
                        Color(0xff3b5a73))//0xff415b5b/
                  ),
                    onPressed: (){
                      addTask();
                    },
                    child:Text('Add',
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
      widget.tskdate = formatDate(chosenDate);
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

  void addTask() {
    if(widget.formkey.currentState!.validate()==true) {
      //add to firebase
      //controller.clear
    }
  }


}

