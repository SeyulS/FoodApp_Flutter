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
            for (var i = 0; i<titles.length; i++)
            cardAllMeals(
              meals: meals[i],
              price: price[i],
              period: period[i],
              img: mealsimages[i],
            ),
            SizedBox(height: 10,)

          ],
        )
      )
    );
  }
}