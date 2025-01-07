import 'package:education_app_ui/Features/Home/Presentation/views/CoursesView.dart';
import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

import 'Widgets/CustomAppBar.dart';
import 'Widgets/HomeViewBody.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors.BackGround,
      body: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 1,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 14,
              ),
              HomeViewBody(),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          selectedItemColor: appcolors.primary,
          currentIndex: 0,
          backgroundColor: Colors.white70,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Coursesview(),
                          ));
                    },
                    child: Icon(Icons.file_copy)),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ]),
    );
  }
}
