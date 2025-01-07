import 'package:education_app_ui/Core/models/CourseModel.dart';
import 'package:flutter/material.dart';

class Data {
  final List<Map<String, dynamic>> courses = [
    {
      'image': 'assets/image1.png',
      'color': Colors.orange,
      'Title': 'Flutter Development Course',
      'Rating': '8.0',
      'Description':
          'A comprehensive course on Flutter, covering UI design, state management, and building mobile applications for Android and iOS.'
       ,'price':'\$ 200' 
    },
    {
      'image': 'assets/image2.png',
      'color': Colors.brown,
      'Title': 'Web Design Fundamentals',
      'Rating': '7.0',
      'Description':
          'Learn the basics of web design including HTML, CSS, and JavaScript to create visually appealing and responsive websites.'
    ,'price':'\$ 150' },
    {
      'image': 'assets/image3.png',
      'color': Colors.orangeAccent,
      'Title': '.NET Development Course',
      'Rating': '8.0',
      'Description':
          'Master the .NET framework, C#, and ASP.NET to build robust and scalable web applications and services.'
    ,'price':'\$ 200' },
    {
      'image': 'assets/image4.png',
      'color': Colors.green,
      'Title': 'CS50: Intro to CS',
      'Rating': '9.0',
      'Description':
          'An introductory course to computer science, exploring algorithms, data structures, software development, and computer systems.'
    ,'price':'\$ 200' },
    {
      'image': 'assets/web design.png',
      'color': Colors.purple,
      'Title': 'Data Structures and Algorithms',
      'Rating': '8.0',
      'Description':
          'A deep dive into essential data structures and algorithms to enhance your problem-solving skills and understanding of computer science fundamentals.'
    ,'price':'\$ 250' }
  ];

  List<Coursemodel> GetCourse() {
    final List<Coursemodel> courseList =
        courses.map((map) => Coursemodel.fromMap(map)).toList();
    return courseList;
  }
}
