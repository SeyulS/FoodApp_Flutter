import 'package:flutter/material.dart';
import 'package:flutter_uts/component/cardComponent/cardAllPopPage.dart';
import 'package:flutter_uts/data/data.dart';
class AllPopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Most Popular"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var i = 0; i<titles.length; i++)
            cardAllPopPage(
              title: titles[i], 
              addr: address[i], 
              type: types[i], 
              img: images[i]
            ),
            SizedBox(height: 10,)

          ],
        )
      )
    );
  }
}