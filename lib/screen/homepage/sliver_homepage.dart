import 'package:ecommerce_app_3/screen/homepage/widgets/gridview_products.dart';
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
    return  Scaffold(
      backgroundColor: Colors.white,
     body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            pinned: true,
            
         flexibleSpace: const CustomAppbar(),
       // child: Padding(padding: EdgeInsets.only(top: 25),
        //  child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          //  children: [
              //CustomAppbar(),
              ),
              SliverList(delegate:
              SliverChildListDelegate(
                [
              SizedBox(height: 35),
              CustomSearchbar(),
              
              SizedBox(height: 10,),
               CatogoryList(),
              
              SizedBox(height: 7,),

             ProductGridview()
          //  ],

      //    ),

       // ),


    ]  )  )  ],),
   );
  }

}
