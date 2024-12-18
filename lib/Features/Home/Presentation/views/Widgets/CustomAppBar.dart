import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 65, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Ahmed',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: appcolors.secondary),
              ),
              Row(
                children: [
                  Text(
                    'Choose Your Course ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'right away',
                    style: TextStyle(color: appcolors.primary),
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.notifications,
            color: appcolors.primary,
            size: 28,
          )
        ],
      ),
    );
  }
}
