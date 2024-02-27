import 'package:flutter/material.dart';
import 'package:ecommerce_app_3/utils/app_images.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                              width: MediaQuery.of(context).size.width / 1.5,
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
                                        AppImages.search)),
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
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Image(image: AssetImage(
                                  AppImages.menu2,), height:85,),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
  }
}