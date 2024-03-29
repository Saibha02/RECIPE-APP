import 'package:flutter/material.dart';
import 'package:flutter_application_7/view/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme:TextTheme(bodyText2: TextStyle(color: Colors.white))
      ),
      home: HomePage(),
    );
  }
}
