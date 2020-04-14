import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/01_safe_area.dart';
import 'package:flutter_widget_of_the_week/02_expanded.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpandedExample(),
    );
  }
}
