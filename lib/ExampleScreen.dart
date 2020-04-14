import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  final String title;
  final Widget withProblem;
  final Widget withSolution;

  const ExampleScreen(
      {Key key, this.title, this.withProblem, this.withSolution})
      : super(key: key);

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  bool showProblem = true;

  void toggleView() {
    setState(() {
      showProblem = !showProblem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.error),
              Switch(
                value: !showProblem,
                onChanged: (_) => toggleView(),
              ),
              Icon(Icons.check_circle)
            ],
          )
        ],
      ),
      body: showProblem ? widget.withProblem : widget.withSolution,
    );
  }
}
