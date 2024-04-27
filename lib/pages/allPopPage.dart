import 'package:flutter/material.dart';
import 'package:flutter_uts/component/cardComponent/cardAllPopPage.dart';
import 'package:flutter_uts/data/data.dart';
import 'package:flutter_uts/pages/homePage.dart';
class AllPopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false, // Prevents the title from being pushed to the center
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.amber),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyHome(),
                ),
              );
            },
          ),
          title: Text(
            "Most Popular",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ), // Center the title manually
          centerTitle: true,
        ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var i = 0; i<mostPopularData.length; i++)
              cardAllPopPage(
                title: mostPopularData[i][0],
                addr: mostPopularData[i][1],
                type: mostPopularData[i][2],
                img : mostPopularData[i][3]
              ),
            SizedBox(height: 10,)

          ],
        )
      )
    );
  }
}