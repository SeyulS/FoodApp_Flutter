import 'package:flutter/material.dart';
class cardAllPopPage extends StatelessWidget {
  final String title;
  final String addr;
  final String type;
  final String img;
  const cardAllPopPage({Key? key, required this.title, required this.addr, required this.type, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
              child: AspectRatio(
                aspectRatio: 16 / 10, 
                child: Image(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Nama
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,
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
                  Text(addr,
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
                  Text(type,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),),
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
