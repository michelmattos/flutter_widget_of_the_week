import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/ExampleScreen.dart';

class SafeAreaExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleScreen(
      title: 'Safe Area Example',
      withProblem: _WithProblem(),
      withSolution: _WithSolution(),
    );
  }
}

class _WithProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(
          100,
          (i) => Text('This is some text'),
        ),
      ),
    );
  }
}

class _WithSolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView(
          children: List.generate(
            100,
            (i) => Text('This is some text'),
          ),
        ),
      ),
    );
  }
}
