import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  List<String> fruits = ['Orange', 'apple', 'mango', 'banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'apple', 'mango', 'banana'],
    'names': ['karan', 'ashu', 'riya', 'komal']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List and Grid'),
          backgroundColor: Colors.red,
          elevation: 8,
        ),
        body: Container(
          // child: ListView.builder(
          //     itemCount: fruits.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(
          //           onTap: () {
          //             print((fruits_person['fruits'][index]));
          //           },
          //           leading: Icon(Icons.person),
          //           title: Text(fruits_person['fruits'][index]),
          //           subtitle: Text(fruits_person['names'][index]),
          //         ),
          //       );
          //     }),

          //grid view
          // child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisExtent: 20,childAspectRatio: 2/3),
          // children: [
          //   Card(child: Center(child: Text('orange')),),
          //   Card(child: Center(child: Text('orange')),),
          //   Card(child: Center(child: Text('orange')),),
          //   Card(child: Center(child: Text('orange')),),
          //   Card(child: Center(child: Text('orange')),)
          // ],
          // ),
          //gridview builder
          child: GridView.builder(
              itemCount: fruits.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  child: Center(child: Text(fruits[index])),
                );
              }),
        ));
  }
}
