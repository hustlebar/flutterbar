import 'package:flutter/material.dart';

class FlutterBarGridView extends StatelessWidget {
  FlutterBarGridView({Key key, this.title}): super(key: key);
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

  Widget _buildBody() {
    return GridView.count(
      primary: false,
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,

      children: _buildChildren(),
    );
  }

  List<Widget> _buildChildren() {
    List<String> images = new List();
    images.add("01.jpg");
    images.add("02.jpg");
    images.add("03.jpg");
    images.add("04.jpg");
    images.add("05.jpg");

    List<Widget> children = new List<Widget>();
    images.forEach((image) => children.add(_buildChild(image)));

    return children;
  }

  Widget _buildChild(String name) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10.0, color: Colors.black38),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
          ),
          margin: const EdgeInsets.all(4.0),
          child: Image.asset('assets/images/$name')
      ),
    );
  }
}