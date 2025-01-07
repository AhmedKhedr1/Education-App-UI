import 'package:education_app_ui/Features/Home/Presentation/views/Widgets/CoursesListView.dart';
import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

class Coursesview extends StatelessWidget {
  Coursesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors.BackGround,
      appBar: AppBar(
        backgroundColor: appcolors.BackGround,
        automaticallyImplyLeading: true,
        title: Text(
          'Courses',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.shopping_cart_checkout_rounded,
              color: appcolors.primary,
              size: 32,
            ),
          )
        ],
      ),
      body: Center(
        child: CoursesListView(Axis.vertical, 800, 370),
      ),
    );
  }
}
