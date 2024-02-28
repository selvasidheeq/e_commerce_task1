import 'package:flutter/material.dart';

class CatogoryList extends StatefulWidget {
  const CatogoryList({super.key});

  @override
  State<CatogoryList> createState() => _CatogoryListState();
}

class _CatogoryListState extends State<CatogoryList> {

  List listDress1 = ["Dresses", "jackets", "jeans", "shoes"];
   int current=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
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
    );
  }
}