import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_tasks_app/core/styles/Theme.dart';
import 'package:todo_tasks_app/dataLayer/task_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_tasks_app/features/home/presentation/views/home_view.dart';
import 'package:todo_tasks_app/features/sittings/presentation/views/sittings_view.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseFirestore.instance.disableNetwork();
  FirebaseFirestore.instance.settings =
      Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);

  runApp(ChangeNotifierProvider(
    create: (context) => TaskProvider(),
    child:const MyApp(),));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themePro=Provider.of<TaskProvider>(context);
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      themeMode: themePro.theme=='light'?ThemeMode.light:
          ThemeMode.dark,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      initialRoute:HomeView.routeName ,
      routes: {
        HomeView.routeName:(context)=>HomeView(),
        SittingsView.routeName:(context)=>SittingsView(),
      }
    );
  }
}