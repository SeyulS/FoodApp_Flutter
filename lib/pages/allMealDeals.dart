import 'package:flutter/material.dart';
import 'package:flutter_uts/component/cardComponent/cardAllMeals.dart';
import 'package:flutter_uts/data/data.dart';
class AllMealDealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals Deals"),
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