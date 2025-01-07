import 'package:education_app_ui/Core/models/CourseModel.dart';
import 'package:education_app_ui/Features/CourseDetails/Presentation/views/CourseDetailsView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CoursesCard extends StatelessWidget {
  const CoursesCard({super.key, required this.course});
  final Coursemodel course;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) {
          return Coursedetailsview();
        },) );
      },
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  height: 120,
                  width: 160,
                  decoration: BoxDecoration(
                      color: course.color as Color,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    course.image,fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.Title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    course.Rating,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        },
                        onRatingUpdate: (value) {},
                      ),
                      Container(
                        height: 24,
                        width: 24,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 14,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
