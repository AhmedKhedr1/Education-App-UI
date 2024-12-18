
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
      body: const Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 14,
          ),
          HomeViewBody(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          selectedItemColor: appcolors.primary,
          currentIndex: 0,
          backgroundColor: Colors.white70,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ]),
    );
  }
}
