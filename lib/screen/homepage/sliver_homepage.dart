import 'package:ecommerce_app_3/screen/homepage/widgets/gridview_products.dart';
//import 'package:ecommerce_app_3/screen/productpage/products.dart';
//import 'package:ecommerce_app_3/utils/app_images.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_3/screen/homepage/widgets/category.dart';
import 'package:ecommerce_app_3/screen/homepage/widgets/search_bar.dart';
import 'package:ecommerce_app_3/screen/homepage/widgets/app_bar.dart';
//import 'dart:math' as math;

class SliverHomescreen extends StatefulWidget {
  @override
  State<SliverHomescreen> createState() => _SliverHomescreenState();
}

class _SliverHomescreenState extends State<SliverHomescreen> {

   List listDress1 = ["Dresses", "jackets", "jeans", "shoes"];
   int current=0;

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
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

             SliverPersistentHeader(
            pinned: false,
            floating: false,
            delegate: _SliverAppBarDelegate(
              minHeight: 60.00,
              maxHeight: 100.0,
              child: const CustomSearchbar(),
             )
          ),
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: _SliverAppBarDelegate(
              minHeight: 60.00,
              maxHeight: 100.0,
             child: Container(
              color: Colors.white,
              child:const CatogoryList(),
             
               ) )
          ),
        

               SliverList(delegate:
               SliverChildListDelegate(
                [
                
                          ProductGridview()
                     
               
               
                 ]  )  ) 
     ],),
   );
  }

}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => 60.0;

  @override
  double get maxExtent => 60.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}