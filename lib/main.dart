import 'package:education_app_ui/Core/Repository/Data.dart';
import 'package:education_app_ui/Core/models/CourseModel.dart';
import 'package:education_app_ui/Features/Home/Presentation/views/HomeView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
Data d=Data();
List <Coursemodel>courseList=d.GetCourse();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}
