import 'package:flutter/material.dart';
import 'layouts/container.dart';
import 'layouts/row.dart';
import 'layouts/column.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterBarColumn(title: 'Flutter Bar - Column',),
    );
  }
}
