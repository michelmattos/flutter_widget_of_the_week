import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/ExampleScreen.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleScreen(
      title: 'Expanded Example',
      withProblem: _buildRow(children: <Widget>[
        MyWidget(),
        MyWidget(),
        MyWidget(),
      ]),
      withSolution: _buildRow(children: <Widget>[
        MyWidget(),
        Expanded(
          child: MyWidget(
            color: Colors.deepPurple,
          ),
        ),
        MyWidget(),
      ]),
    );
  }
}

Widget _buildRow({List<Widget> children}) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    ),
  );
}

class MyWidget extends StatelessWidget {
  final Color color;

  const MyWidget({Key key, this.color = Colors.amber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 48.0,
      height: 48.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}
