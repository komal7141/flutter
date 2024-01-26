import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Rows and Colums'),
        ),
        body: Container(
          height:h,
          width:w,
          color:Colors.yellow,
          child:Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            direction: Axis.vertical,
            children: [
              Container(
                height: 60,
                width: 60, color: Colors.red,
              ),
              Container(
                height: 60,
                width: 60, color: Colors.blue,
              ),
              Container(
                height: 60,
                width: 60, color: Colors.black,
              ),
              Container(
                height: 60,
                width: 60, color: Colors.green,
              )
            ],
          )
        ));
  }
}
