import 'package:flutter/material.dart';
import 'package:my_apps/Container_Sized.dart';
import 'package:my_apps/widgets/alert.dart';
import 'package:my_apps/widgets/animated.dart';
import 'package:my_apps/widgets/bottomnavi.dart';
import 'package:my_apps/widgets/bottomsheet.dart';
import 'package:my_apps/widgets/button.dart';
import 'package:my_apps/widgets/dismissible.dart';
import 'package:my_apps/widgets/drawer.dart';
import 'package:my_apps/widgets/dropdown.dart';
import 'package:my_apps/widgets/image.dart';
import 'package:my_apps/widgets/list_grid.dart';
import 'package:my_apps/widgets/rowscols.dart';
import 'package:my_apps/widgets/snackbar.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green 
      ),
      home: DropDownWidget(),
    );
  }
}