import 'package:flutter/material.dart';
import 'layouts/gridview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterBarGridView(title: 'Flutter Bar - GridView',),
    );
  }
}
