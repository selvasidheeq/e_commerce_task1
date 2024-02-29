
import 'package:ecommerce_app_3/screen/homepage/sliver_homepage.dart';
import 'package:ecommerce_app_3/screen/pages/notify/notify.dart';
import 'package:ecommerce_app_3/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_3/screen/homepage/homepage.dart';
import 'package:ecommerce_app_3/screen/pages/cart/cart.dart';
import 'package:ecommerce_app_3/screen/homepage/homepage.dart';
import 'package:ecommerce_app_3/screen/pages/profilepage/profile.dart';


class BottomNavigationScreen extends StatefulWidget {
  
 
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}
class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
    // final pageBucket =PageStorageBucket();
  var _selectedIndex = 0;

  List<Widget> buildscreens = [
  SliverHomescreen(),
    Cart(),
    Notifications(),
    Profile1(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBody: true,
      body:  buildscreens[_selectedIndex],
      //buildscreens[_selectedIndex],
     // PageStorage(bucket: pageBucket,child: buildscreens[_selectedIndex],),
      bottomNavigationBar : bottamnav_widget(
         selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
    
  }
}

class bottamnav_widget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected ;
  
  bottamnav_widget({
     required this.selectedIndex,
    required this.onItemSelected,
    
  });

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return
    // Scaffold(
    //  extendBody: true,
    //   body: buildscreens[_selectedIndex],
    //  bottomNavigationBar:
     Container(
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
             onTap:(){
              onItemSelected(index);
             },
            //  () {
            //   setState(() {
            //     _selectedIndex = index;
            //   });
            // },
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == selectedIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == selectedIndex ? displayWidth * .08 : 0,
                    width: index == selectedIndex ? displayWidth * .26 : 0,
                    decoration: BoxDecoration(
                      color: index == selectedIndex
                          ? Colors.grey.shade200
                          : Colors.black,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == selectedIndex
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
                            width: index == selectedIndex
                                ? displayWidth * .135
                                : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == selectedIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == selectedIndex
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
                                color: index == selectedIndex
                                    ? Colors.black
                                    : Colors.white,
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  listOfimages[index],
                                  color: index == selectedIndex
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
      
     
    );
  }
   List listOfimages = [
    AppImages.home,
    AppImages.trolley,
    AppImages.notify,
    AppImages.profile,
  ];
  List<String> listOfStrings = [
    'Home',
    'Cart',
    'Notification',
    'Profile',
  ];

}
