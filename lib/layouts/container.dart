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
        _buildCircledBox(),
        SizedBox(height: 5.0,),
        _buildImageBox(),
        SizedBox(height: 5.0,),
        _buildTransformedBox()
      ],
    );
  }

  _buildTransformedBox() {
    return Center(
      child: Container(
        child: Text('Image container'),
        padding: EdgeInsets.all(15.0),
        color: Colors.blue,
        transform: Matrix4.rotationZ(0.5),
      ),
    );
  }

  _buildImageBox() {
    return Center(
      child: Container(
        child: Text('Image container'),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://image.freepik.com/free-vector/spot-light-background_1284-4685.jpg'),
            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          ),
        )
      ),
    );
  }

  _buildCircledBox() {
    return Center(
      child: Container(
        child: Text('Circular container'),
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
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
          color: Colors.blue,
        ),
      ),
    );
  }
}