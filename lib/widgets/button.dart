import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Button'),),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                overlayColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.yellow)
              ),
              onPressed: (){}, child: Text('Press me',
            style: TextStyle(fontSize: 20),
            ),),
            SizedBox(height: 20),
            Container(
              height: 70,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ))
                ),
                onPressed: (){
                print('Like');
              }, 
              child: Text('Press me',
              style: TextStyle(fontSize: 20))
              ),
            )
          ], 
         ),
       )
    );
  }
}