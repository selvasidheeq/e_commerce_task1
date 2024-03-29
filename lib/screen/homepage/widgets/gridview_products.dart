import 'package:ecommerce_app_3/utils/app_images.dart';
import 'package:flutter/material.dart';

class ProductGridview extends StatelessWidget {
  List categoryNames1 = [
    "Roller Rabbit",
    "endless rose",
    " Theory",
    "Fab alley",
    "Roller Rabbit",
    "endless rose",

  ];
  List categoryNames2 = [
    "vado Odelle Dress",
    "Bubble Elastic T_shirt",
    "irregular Rib Skirt",
    "lossy pants",
    "vado Odelle Dress",
    "Bubble Elastic T_shirt",

  ];
  List categoryNames3 = [
    "\$189.0",
    "\$50.00",
    "\$100.00",
    "\$180.00",
    "\$189.0",
    "\$50.00",

  ];
  List categoryFoodPics = [
    AppImages.dress1,
    AppImages.dress2,
    AppImages.dress3,
    AppImages.dress4,
    AppImages.dress5,
    AppImages.dress6,

  ];



  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return SizedBox(
      //height: 100,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(parent: ClampingScrollPhysics()),
          itemCount: categoryFoodPics.length,
            scrollDirection: Axis.vertical,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 20/33,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
              mainAxisExtent: MediaQuery.of(context).size.height/2
            ) ,
            itemBuilder: (context,index){
            return Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                index.isEven
                    ? Container()
                    : SizedBox(
                  height: height * 0.07,
                ),
                Container(
                  height: height*0.33,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(categoryFoodPics[index]),
                        ),
                      ),
                      Positioned(
                        right: 10,
                          top: 10,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Image.asset(AppImages.heart,height: 15,),
                            ),
                          ))
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.0),
                    Text(categoryNames1[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(categoryNames2[index],style: TextStyle(color: Colors.grey),),
                    Text(categoryNames3[index],style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ],

            );
            }),
      ),
    );
  }
}
