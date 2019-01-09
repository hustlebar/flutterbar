import 'package:flutter/material.dart';

class FlutterBarStack extends StatelessWidget {
  FlutterBarStack({Key key, this.title}): super(key: key);
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
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        _buildBackground(),
        _buildOverlayText()
      ],
    );
  }

  _buildBackground() {
    return Container(
      child: Image.asset('assets/images/03.jpg'),
    );
  }

  _buildOverlayText() {
    return Container(
      child: Text('Strawberry'),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
        color: Colors.blue,
      ),
    );
  }
}