import 'package:education_app_ui/Features/Home/Presentation/views/Widgets/CoursesCard.dart';
import 'package:education_app_ui/Features/Home/Presentation/views/Widgets/CoursesListView.dart';
import 'package:education_app_ui/Features/Home/Presentation/views/Widgets/CustomGridView.dart';
import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffF0E8E3),
                borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for your grades, course training',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomGridView(),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Courses',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: appcolors.secondary),
              ),
              Text(
                'See All',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: appcolors.primary),
              )
            ],
          ),
          
          CoursesListView()
        ],
      ),
    );
  }
}
