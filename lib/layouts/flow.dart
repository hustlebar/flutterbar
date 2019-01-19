import 'package:flutter/material.dart';
import 'package:flutterbar/core/image_util.dart';

class FlutterBarFlow extends StatelessWidget {
  FlutterBarFlow({Key key, this.title}): super(key: key);
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
    return Flow(
      children: _buildChildren(),
    );
  }

  _buildChildren() {
    List<Widget> children = new List();

    ImageUtil.images().forEach((image) => children.add(Text(image)));
    return children;
  }
}