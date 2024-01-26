import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor:Color.fromARGB(255, 62, 9, 209),
        title: Text('Container and sizedbox'),),
    //     body: Center(child:
    //     // SizedBox(
    //     //   height: 50,
    //     //   width: 50,
    //     //   child: Text('hello'),
    //     // ),
        
    //      )
    body: Center(
      child: Container( 
        padding: EdgeInsets.all(10),
        height:100,width:100,
      decoration: BoxDecoration(
        
        color: Colors.blue,
        // shape:BoxShape.circle
        // borderRadius: BorderRadius.circular(20)
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 5,
            color: Colors.grey
          )
        ]
      ),
      child:Center(
        child:Center(child: Container(color:Colors.red),),
      )
      ),
    ),
     );
  }
}
