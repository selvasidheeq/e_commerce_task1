import 'package:ecommerce_app_3/screen/notify/notify.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app_3/screen/cart/cart.dart';
import 'package:ecommerce_app_3/screen/homepage/homepage.dart';
import 'package:ecommerce_app_3/screen/profilepage/profile.dart';

// void main(){
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BottomNavigationScreen()));
// }
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _selectedIndex = 0;

  List<Widget> buildscreens = [
    Homescreen1(),
    Cart1(),
    Notifications(),
    Profile1(),



  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: buildscreens[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .004),
        height: displayWidth * .155,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, -1),
              blurRadius: 20,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .04),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == _selectedIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == _selectedIndex ? displayWidth * .08 : 0,
                    width: index == _selectedIndex ? displayWidth * .26 : 0,
                    decoration: BoxDecoration(
                      color: index == _selectedIndex
                          ? Colors.grey.shade200
                          : Colors.black,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == _selectedIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == _selectedIndex
                                ? displayWidth * .135
                                : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == _selectedIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == _selectedIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11),
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 70,
                                color: index == _selectedIndex
                                    ? Colors.black
                                    : Colors.white,
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  listOfimages[index],
                                  color: index == _selectedIndex
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List listOfimages = [
    "assets/icons/ic_home.png",
    "assets/icons/ic_trolley.png",
    "assets/icons/ic_notify.png",
    "assets/icons/ic_profile.png",
  ];
  List<String> listOfStrings = [
    'Home',
    'Cart',
    'Notification',
    'Profile',
  ];
}