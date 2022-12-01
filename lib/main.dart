import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_demo/models/task_data.dart';
import 'package:to_do_app_demo/view/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homescreen(),
      ),
    );
  }
}
