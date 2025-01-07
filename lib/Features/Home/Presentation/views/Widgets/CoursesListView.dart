import 'package:education_app_ui/Core/Repository/Data.dart';
import 'package:education_app_ui/Core/models/CourseModel.dart';
import 'package:education_app_ui/Features/Home/Presentation/views/Widgets/CoursesCard.dart';
import 'package:flutter/material.dart';

class CoursesListView extends StatelessWidget {
  Axis direction;
  double h;
  double w;
  CoursesListView(
    this.direction,
    this.h,
    this.w, {
    super.key,
  });
Data d=Data();

 

  @override
  Widget build(BuildContext context) {
    List <Coursemodel>courseList=d.GetCourse();
    return SizedBox(
      height: h,
      width: w,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: direction,
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: CoursesCard(
              course: courseList[index],
            ),
          );
        },
      ),
    );
  }
}
