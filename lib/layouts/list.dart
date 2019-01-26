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
    int value = 1;
    if (value == 0) {
      return _buildDefaultList();
    }

    return _buildSeparatedList();
  }

  _buildSeparatedList() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Text('Hello $index');
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Color.fromRGBO(10, 100, 125, 0.75),
        );
      },
      itemCount: 10
    );
  }

  _buildDefaultList() {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Text('entry $index');
        }
    );
  }
}