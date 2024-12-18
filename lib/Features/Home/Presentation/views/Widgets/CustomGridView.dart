
import 'package:education_app_ui/Features/Home/Presentation/views/Widgets/CuatomCard.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
   CustomGridView({
    super.key,
  });
  final List<Map<String, dynamic>> options = [
    {'icon': Icons.file_copy, 'color': Colors.orange, 'label': 'Category'},
    {'icon': Icons.video_call, 'color': Colors.brown, 'label': 'Boutique Class'},
    {'icon': Icons.school_outlined, 'color': Colors.orangeAccent, 'label': 'Free Course'},
    {'icon': Icons.store, 'color': Colors.green, 'label': 'BookStore'},
    {'icon': Icons.live_tv, 'color': Colors.purple, 'label': 'Live Course'},
    {'icon': Icons.leaderboard, 'color': Colors.amber, 'label': 'Leaderboard'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          padding: EdgeInsets.all(0),
          physics: NeverScrollableScrollPhysics(),
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
            itemCount: options.length,
            itemBuilder: (context, index) {
              return Custom_Card(option: options[index]);
            },
          ),
      ),
    );
  }
}
