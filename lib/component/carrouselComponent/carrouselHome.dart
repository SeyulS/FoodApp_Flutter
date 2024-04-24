import 'package:flutter/material.dart';

class carrouselImageItems extends StatelessWidget {
  final String img;
  const carrouselImageItems({Key? key, required this.img}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
      child: Image(
        image: AssetImage(img),
        fit: BoxFit.cover, // Adjust fit as needed
        width: double.infinity, // Adjust width as needed
        height: 200, // Adjust height as needed
      ),
    );
  }
}