import 'package:flutter/material.dart';

class FlutterBarContainer extends StatelessWidget {

  FlutterBarContainer({Key key, this.title}): super(key: key);
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
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildStyledBox(),
        SizedBox(height: 5.0,),
        _buildCircledBox()
      ],
    );
  }

  _buildCircledBox() {
    return Center(
      child: Container(
        child: Text('Circular container'),
//        color: Colors.amber,
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle
        ),
      ),
    );
  }

  _buildStyledBox() {
    return Center(
      child: Container(
        child: Text('Styled container'),
//        color: Colors.amber,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
          color: Colors.blue,
        ),
      ),
    );
  }
}