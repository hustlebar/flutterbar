import 'package:flutter/material.dart';

class FlutterBarColumn extends StatelessWidget {
  FlutterBarColumn({Key key, this.title}): super()
  @override
  Widget build(BuildContext context) {
    return null;
  }

  _buildUi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildBody(),
    );
  }
}