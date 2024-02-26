import 'package:ecommerce_app_3/screen/productpage/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Homescreen1 extends StatefulWidget {
  @override
  State<Homescreen1> createState() => _Homescreen1State();
}

class _Homescreen1State extends State<Homescreen1> {

   List listDress1 = ["Dresses", "jackets", "jeans", "shoes"];
   int current=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Image(image: AssetImage(
                              "assets/icons/ic_menu.png",), height: 50,),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: InkWell(
                            onTap: () {},
                            child: Image(
                              image: AssetImage("assets/icons/ic_human.png",),
                              height: 50,),

                          ),
                        ),

                      ],
                    ),
                  ),

                ),
                SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 1.5,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 1,
                                        spreadRadius: 1
                                    ),
                                  ]

                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Image(image: AssetImage(
                                        "assets/icons/ic_search.png")),
                                    hintText: "Search.."
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 7,
                            child: InkWell(
                              onTap: () {},
                              // child:Icon(Icons.menu,color: Colors.black,),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Image(image: AssetImage(
                                  "assets/icons/ic_.menu2png",), height:85,),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7,),
                    child: ListView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listDress1.length,
                        itemBuilder: (context,index){
                        return FittedBox(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    current=index;
                                  });
                                },

                             child: Container(
                                height: 40,
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.only(left: 25,right: 25),
                                decoration: BoxDecoration(
                                  border: Border.all(color:current==index ?Colors.transparent:Colors.grey ),
                                  color: current==index ?Colors.black:Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      listDress1[index],
                                      style: TextStyle(
                                        color: current==index ? Colors.white:Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ),
                                ),
                              ),

                              ), ],
                          ),
                        );
                        }),
                  ),
                ),
                SizedBox(height: 7,),

                products1()
              ],

            ),

          ),

        ),


      ),
    );
  }

}
