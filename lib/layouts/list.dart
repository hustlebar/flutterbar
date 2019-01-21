import 'package:flutter/material.dart';

class FlutterBarList extends StatelessWidget {
  FlutterBarList({Key key, this.title}): super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Widget _buildUi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Text('entry $index');
      }
    );
  }
}