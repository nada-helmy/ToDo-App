
class Taskmodel{
  String? title;
  DateTime? taskDate;
  bool? isDone;
  String? id;

  Taskmodel({this.id, required this.title, this.isDone, required this.taskDate});

  Taskmodel.fromFireStore(Map<String,dynamic>data){
    title = data['title'];
    id = data['id'];
    taskDate = DateTime.fromMillisecondsSinceEpoch(data['taskDate']);//but we receive it as date time
    isDone = data['isDone'];
  }

   Map<String,dynamic>toFireStore(){
    return {
      'id':id ,
      'title':title,
      'taskDate':taskDate?.millisecondsSinceEpoch,//we store the date as milliseconds in the firebase
      'isDone':isDone
    };
  }
}



