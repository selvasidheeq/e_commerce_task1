import 'package:ecommerce_app_3/screen/productpage/products.dart';
import 'package:ecommerce_app_3/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_3/screen/homepage/widgets/category.dart';
import 'package:ecommerce_app_3/screen/homepage/widgets/search_bar.dart';
import 'package:ecommerce_app_3/screen/homepage/widgets/app_bar.dart';


class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

   List listDress1 = ["Dresses", "jackets", "jeans", "shoes"];
   int current=0;

  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
    //   backgroundColor: Colors.white,
     // body: 
      SingleChildScrollView(
        child: SafeArea(
          child: Padding(padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(),
                
                SizedBox(height: 35),
                SearchBar(),
                
                SizedBox(height: 10,),
                 CatogoryList(),
                
                SizedBox(height: 7,),

                products()
              ],

            ),

          ),

        ),


      );
   // );
  }

}
