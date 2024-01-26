import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                //color: Colors.red,
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  CircleAvatar(radius: 40,
                  //backgroundImage: NetworkImage(url),
                  ),SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                  [  
                    Text('Komal sharma',style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold),),
                    Text('abc@gmail.com'),
                  ],)
                ],),
              )),
              ListTile(leading: Icon(Icons.folder),
              title: Text('My Files'),),
              ListTile(leading: Icon(Icons.group),
              title: Text('shared with me'),),
              ListTile(leading: Icon(Icons.star),
              title: Text('Starred'),),
              ListTile(leading: Icon(Icons.delete),
              title: Text('Trash'),),
              ListTile(leading: Icon(Icons.upload),
              title: Text('Uploads'),),
              Divider(),
              ListTile(leading: Icon(Icons.share),
              title: Text('Share'),),
              ListTile(leading: Icon(Icons.logout),
              title: Text('Logout'),),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Container(
        child: Center(child: Text('Hey there')),
      ),
    );
  }
}