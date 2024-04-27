import 'package:flutter/material.dart';
import 'package:flutter_uts/component/cardComponent/cardAllMeals.dart';
import 'package:flutter_uts/data/data.dart';
import 'package:flutter_uts/pages/homePage.dart';
class AllMealDealsPage extends StatelessWidget {
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
            "Meals Deals",
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
            for (var i = 0; i<mealDealsData.length; i++)
              cardAllMeals(
                meals: mealDealsData[i][0],
                price: mealDealsData[i][1],
                period: mealDealsData[i][2],
                img: mealDealsData[i][3],
              ),
            SizedBox(height: 10,)

          ],
        )
      )
    );
  }
}