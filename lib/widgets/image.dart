import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doraemon Image'),
      ),
    body: Center(
      child: Container(
        height: 300,
        width: 200,
        child: CachedNetworkImage(imageUrl: 'https://m.media-amazon.com/images/I/51dMgo8EChL._AC_UF894,1000_QL80_.jpg',
        placeholder: (context,url)=>Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),),
        // decoration: BoxDecoration(
        //   boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,spreadRadius: 5.0),],
        //   color: Colors.red,borderRadius: BorderRadius.circular(20),
        // image: DecorationImage(image:
        //  AssetImage('assets/Doraemon_character.png')
        // // NetworkImage('https://m.media-amazon.com/images/I/51dMgo8EChL._AC_UF894,1000_QL80_.jpg',),
        // ,fit: BoxFit.cover, )),
        
      ),
    ),);
  }
}