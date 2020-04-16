import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/01_safe_area.dart';
import 'package:flutter_widget_of_the_week/02_expanded.dart';

void main() => runApp(MyApp());

class Example {
  String title;
  String route;
  Widget Function(BuildContext) widget;

  Example({@required this.title, @required this.route, @required this.widget});
}

List<Example> examples = [
  Example(
    title: 'SafeArea',
    route: 'safe-area',
    widget: (_) => SafeAreaExample(),
  ),
  Example(
    title: 'Expanded',
    route: 'expanded',
    widget: (_) => ExpandedExample(),
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: examples.fold({}, (result, element) {
        result[element.route] = element.widget;
        return result;
      }),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget of the Week'),
      ),
      body: ListView.separated(
        itemBuilder: (_, idx) {
          return ListTile(
            title: Text(examples[idx].title),
            trailing: Icon(Icons.chevron_right),
            onTap: () => Navigator.pushNamed(context, examples[idx].route),
          );
        },
        separatorBuilder: (context, idx) => Divider(),
        itemCount: examples.length,
      ),
    );
  }
}
