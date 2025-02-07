import 'package:flutter/material.dart';

class Coursemodel {
  String image;
  Color color;
  String Title;
  String Rating;
  String description;
  String price;

  Coursemodel(
      {required this.image,
      required this.color,
      required this.Title,
      required this.Rating,
      required this.description,required this.price});


      factory Coursemodel.fromMap(Map<String, dynamic> map) {
    return Coursemodel(
      image: map['image'] as String,
      color: map['color'] as Color,
      Title: map['Title'] as String,
      Rating: map['Rating'] as String,
      description: map['Description'] as String,
      price: map['price']as String,
    );
  }
}
