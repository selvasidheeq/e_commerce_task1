import 'package:flutter/material.dart';
import 'package:ecommerce_app_3/utils/app_images.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
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
                            child: Image(image: AssetImage(AppImages.menu
                              ), height: 50,),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: InkWell(
                            onTap: () {},
                            child: Image(
                              image: AssetImage(AppImages.human,),
                              height: 50,),

                          ),
                        ),

                      ],
                    ),
                  ),

                );
  }
}