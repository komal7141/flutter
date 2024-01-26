import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snackbar'),
        backgroundColor: Colors.purple,
        elevation: 8,
      ),
      body: Container(
          child: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
               // padding: EdgeInsets.all(20),
               action: SnackBarAction(label: 'Undo', textColor: Colors.blue, onPressed: (){}),
               behavior: SnackBarBehavior.floating,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
               ),
                duration: const Duration(milliseconds: 3000 ),
                //backgroundColor: Colors.red,
                content: Text('this is snackbar'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('show snackbar')),
      )),
    );
  }
}
