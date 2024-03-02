import 'dart:convert';
import 'package:ecommerce_app_3/screen/pages/cart/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  late Future<List<Photo>> futurePhotos;
  List<Photo> _photos =[];
 
 Future<List<Photo>> getData() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode ==200){
      for(Map<String,dynamic> index in data){
        _photos.add(Photo.fromJson(index));
      }
      return _photos;
    } else {
      return _photos;
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: FutureBuilder<List<Photo>>(
          future: futurePhotos,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                // itemCount: snapshot.data!.length,
                // itemBuilder: (context, index) {
                //   return ListTile(
                //     title: Text(snapshot.data![index].title),
                //     leading: Image.network(snapshot.data![index].thumbnailUrl),
                  itemCount:_photos.length,
                itemBuilder: (context,index){
                  return Card(   
                   child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.network(_photos[index].thumbnailUrl),
                         
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'albumId:${_photos[index].albumId}',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'id:${_photos[index].id}',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    _photos[index].title,
                                    style: TextStyle(fontSize: 10,
                                  
                                          ),
                                  ),
                                   ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
