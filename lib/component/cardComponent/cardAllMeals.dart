import 'package:flutter/material.dart';
class cardAllMeals extends StatelessWidget {
  final String meals;
  final String price;
  final String period;
  final String img;
  const cardAllMeals({Key? key, required this.meals, required this.price, required this.period, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        child: Column(
          children: [
            ClipRect(
              child: AspectRatio(
                aspectRatio: 16/10,
                child: Image(
                  image: AssetImage(img),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Nama
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(meals,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
      
            // Lokasi
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),),
                ],
              ),
            ),
      
            // Jenis
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Text(
                    period,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
