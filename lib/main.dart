import 'package:flutter/material.dart';

import 'presentationLayer/SittingTap.dart';
import 'presentationLayer/homeScreen.dart';
import 'presentationLayer/styles/Theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: Apptheme.lighttheme,
      //darkTheme: Apptheme.dark,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SittingTab.routeName:(context)=>SittingTab(),
      }
    );
  }
}