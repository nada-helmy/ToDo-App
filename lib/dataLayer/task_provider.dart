
import 'package:flutter/material.dart';
import 'package:todo_tasks_app/features/home/presentation/views/widgets/task_item.dart';

class TaskProvider extends ChangeNotifier{

  List<TaskItem> taskItems = [];
  String theme='light';

  changeTheme(String theme){
    this.theme=theme;
    notifyListeners();
  }
  listOfItems(TaskItem item){
    taskItems.add(item);
    notifyListeners();
  }

  removeTask(int index){
    taskItems.removeAt(index);
    notifyListeners();
  }
}