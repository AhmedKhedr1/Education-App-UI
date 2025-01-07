import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

class CardOfDetails extends StatelessWidget {
  CardOfDetails(
    this.icon,
    this.text,
    this.text2, {
    super.key,
  });
  IconData? icon;
  String text;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: 95,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: appcolors.primary,
              ),
              Text(
                text,
                style: TextStyle(
                    color: appcolors.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
              Text(text2,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 17)),
            ],
          ),
        ),
      ),
    );
  }
}
