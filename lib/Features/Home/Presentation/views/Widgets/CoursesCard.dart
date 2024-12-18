import 'package:flutter/material.dart';

class CoursesCard extends StatelessWidget {
  const CoursesCard({super.key, required this.course});
  final Map<String, dynamic> course;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 120,
              width: 160,
              decoration: BoxDecoration(
                  color: course['color'],
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                course['image'],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course['Title'],style:const TextStyle(fontWeight: FontWeight.bold),),
                Text(course['Rating'],style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
