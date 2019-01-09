import 'package:flutter/material.dart';

class FlutterBarColumn extends StatelessWidget {
  FlutterBarColumn({Key key, this.title}): super(key: key);
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildChildren(),
    );
  }

  _buildChildren() {
    List<Widget> children = new List<Widget>();
    children.add(_buildFirst());
    children.add(_buildSecond());

    return children;
  }

  Widget _buildFirst() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Email')
        ),
        Expanded(
          flex: 2,
          child: Text('Email field goes here:'),
        )
      ],
    );
  }

  Widget _buildSecond() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Password'),
        ),
        Expanded(
          flex: 2,
          child: Text('Password field goes here'),
        )
      ],
    );
  }
}