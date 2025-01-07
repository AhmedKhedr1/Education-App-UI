import 'package:education_app_ui/Core/models/CourseModel.dart';
import 'package:education_app_ui/Features/CourseDetails/Presentation/views/Widgets/CardOfDetails.dart';
import 'package:education_app_ui/color.dart';
import 'package:flutter/material.dart';

class Coursedetailsview extends StatelessWidget {
  Coursedetailsview(this.course, {super.key});
  Coursemodel course;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors.BackGround,
      appBar: AppBar(
        backgroundColor: appcolors.BackGround,
        //  title: Text(course.Title,style: TextStyle(fontSize: 20),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Center(
                child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(),
                    child: Image.asset(course.image))),
            SizedBox(
              height: 12,
            ),
            Text(
              course.Title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: appcolors.secondary),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              thickness: 3,
              endIndent: 180,
              color: appcolors.primary,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  course.price,
                  style: TextStyle(
                      color: appcolors.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      course.Rating,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: appcolors.primary,
                      size: 32,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardOfDetails(Icons.file_copy,'24','Classes'),
                  CardOfDetails(Icons.access_time,'2 hours','Time'),
                  CardOfDetails(Icons.airline_seat_flat,'36','Seats')
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              course.description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: appcolors.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 38,
                      color: Colors.white,
                    )),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: appcolors.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Join Course',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
