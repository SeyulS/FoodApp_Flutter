import 'package:flutter/material.dart';
class cardMealDeals extends StatelessWidget {
  final String meals;
  final String price;
  final String period;
  final String img;
  const cardMealDeals({Key? key, required this.meals, required this.price, required this.period, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.only(right: 10),
    elevation: 10, // Menambahkan elevasi untuk efek bayangan
    child: SizedBox(
      height: 210,
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 16 / 10, 
              child: Image(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              meals,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 15,
                ),
                SizedBox(width: 4),
                Flexible(
                  child: Text(
                    period,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
}
