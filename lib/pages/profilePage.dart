import 'package:flutter/material.dart';
import 'package:flutter_uts/data/data.dart';
import 'package:flutter_uts/pages/bookMarkPage.dart';
import 'package:flutter_uts/pages/discoveryPage.dart';
import 'package:flutter_uts/pages/homePage.dart';
import 'package:flutter_uts/pages/topFoodPage.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _MyAppState();
}

class _MyAppState extends State<profilePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          color: Colors.amber,
          child: Center(
            child: Container(
              child: Text("Profile Page",
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => topFoodPage(),
                  ),
                );
              case 4:
                break;
            }
          },
        ),
      );
  }
}