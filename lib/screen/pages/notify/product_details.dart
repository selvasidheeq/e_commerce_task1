import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String description;
  
    const DetailsScreen({super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description
    });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          "PRODUCTS",
        ),
      ),
      body:  SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined))
              ],
            ),
            Expanded(child: Image(
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                  image:  NetworkImage(
                    widget.image
                  ),
                )),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white60,
              ),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    
                    Text("\$ ${widget.price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(widget.description!),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent),
                child: Center(
                  child: Text("Add To Cart",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width /5,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                child: Center(
                  child:Icon(Icons.favorite_border,color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 