import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_uts/component/cardComponent/cardMealsDeals.dart';
import 'package:flutter_uts/pages/allMealDeals.dart';
import 'package:flutter_uts/pages/allPopPage.dart';
import 'package:flutter_uts/component/cardComponent/cardMostPop.dart';
import 'package:flutter_uts/data/data.dart';
import 'package:flutter_uts/pages/bookMarkPage.dart';
import 'package:flutter_uts/pages/discoveryPage.dart';
import 'package:flutter_uts/pages/profilePage.dart';
import 'package:flutter_uts/pages/topFoodPage.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.amber),
            onPressed: () {
            },
          ),
          title: Text(
            "Sydney CBD",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: 5),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Center(
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Search for restaurants...",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 10,),
              // Image
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Image.asset(fit: BoxFit.cover,"lib/images/sushi.jpg",width: double.infinity, height: double.infinity,),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter, 
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "12 Places",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Japanese Style",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 24,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                            ),
                          ),
                          for (int i = 0; i < 3; i++)
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              
              SizedBox(height: 20,),
              
              // Most Popular
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AllPopPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Most Popular Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Generate Card Disini
                        for (var i = 0; i<titles.length; i++)
                          cardMostPop(
                            title: titles[i],
                            addr: address[i],
                            type: types[i],
                            img : images[i]
                          )
                      ],
                  
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              
              // Meals Deals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Meal Deals",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AllMealDealsPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),


              // Meals Deals Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Generate Card Disini
                        for (var i = 0; i<titles.length; i++)
                          cardMealDeals(
                            meals: meals[i],
                            price: price[i],
                            period: period[i],
                            img: mealsimages[i],
                          )
                      ],
                  
                        ),
                      ),
                ),
                ),

                SizedBox(height: 20,)
              ],
            ),
          ),

        // Navigation Bar Bottom
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Discovery",
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: "Bookmark",
              icon: Icon(Icons.bookmark),
            ),
            BottomNavigationBarItem(
              label: "Top Foodie",
              icon: Icon(Icons.emoji_events),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ],
          currentIndex: indexNow,
          onTap: (int index) {
            setState(() {
              indexNow = index;
            });
            switch (index){
              case 0:
                break;
              case 1:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => discoveryPage(),
                  ),
                );
              case 2:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => bookMarkPage(),
                  ),
                );
              case 3:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => topFoodPage(),
                  ),
                );
              case 4:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => profilePage(),
                  ),
                );
            }
            
          },
        ),
      );
  }
}