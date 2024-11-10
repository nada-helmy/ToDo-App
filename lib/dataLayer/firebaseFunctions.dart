
import 'package:cloud_firestore/cloud_firestore.dart';

import 'model.dart';

class FirebaseFunctions{
  static CollectionReference<Taskmodel> getTaskCollection() {
      return  FirebaseFirestore.instance
         .collection('tasks')
         .withConverter<Taskmodel>(
         fromFirestore: (snapshot, _) =>
             Taskmodel.fromFireStore(snapshot.data()!),
         toFirestore: (task, _) => task.toFireStore());
   }

  static Future<void> addTask(Taskmodel task){
     task.id= getTaskCollection().doc().id;
    return getTaskCollection().doc().set(task);
  }
}