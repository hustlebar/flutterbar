import 'package:flutter/material.dart';

class FlutterBarRow extends StatelessWidget {
  FlutterBarRow({Key key, this.title}): super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  _buildUi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Row(
      children: _buildChildren(),
    );
  }

  _buildChildren() {
    List<String> images = new List();
    images.add("01.jpg");
    images.add("02.jpg");
    images.add("03.jpg");
    images.add("04.jpg");
    images.add("05.jpg");

    List<Widget> children = new List<Widget>();
    images.forEach((name) => children.add(_buildChild(name)));

    return children;
  }

  Container _buildChild(String name) {
    return Container(
      child: Image.asset('assets/images/$name')
    );
  }
}