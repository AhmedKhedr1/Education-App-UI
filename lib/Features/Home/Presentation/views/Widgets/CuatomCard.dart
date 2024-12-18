import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  Custom_Card({
    super.key,
    required this.option,
  });
  final Map<String, dynamic> option;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: option['color']),
            padding:const EdgeInsets.all(16),
            child: Icon(
              option['icon'],
              color: Colors.white,
            )),
        Text(
          option['label'],
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
