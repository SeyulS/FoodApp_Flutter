import 'package:flutter/material.dart';
import 'package:flutter_uts/data/data.dart';
import 'package:flutter_uts/pages/bookMarkPage.dart';
import 'package:flutter_uts/pages/discoveryPage.dart';
import 'package:flutter_uts/pages/homePage.dart';
import 'package:flutter_uts/pages/profilePage.dart';

class topFoodPage extends StatefulWidget {
  const topFoodPage({Key? key}) : super(key: key);

  @override
  State<topFoodPage> createState() => _MyAppState();
}

class _MyAppState extends State<topFoodPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          color: Colors.yellowAccent,
          child: Center(
            child: Container(
              child: Text("Top Foodie Page",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyHome(),
                  ),
                );
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
                break;
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