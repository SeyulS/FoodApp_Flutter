import 'package:flutter/material.dart';
class cardMostPop extends StatelessWidget {
  final String title;
  final String addr;
  final String type;
  final String img;
  const cardMostPop({Key? key, required this.title, required this.addr, required this.type, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      margin: EdgeInsets.only(right: 10),
      child: Container(
        height: 210,
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4)
              ),
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
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                addr,
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                type,
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
  );
  }
}
