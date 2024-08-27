import 'package:flutter/material.dart';

import 'presentationLayer/homeScreen.dart';
import 'presentationLayer/styles/Theme.dart';

void main() {
  runApp(const MyApp());
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
      }
    );
  }
}