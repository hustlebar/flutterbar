import 'package:flutter/material.dart';

class FlutterBarTable extends StatelessWidget {
  FlutterBarTable({Key key, this.title}) : super(key: key);
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
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: FlexColumnWidth(0.5),
      columnWidths: {
        0: FlexColumnWidth(0.2)
      },
      border: TableBorder.all(
        color: Color.fromARGB(100, 200, 100, 100)
      ),
      children: _buildChildren(),
    );
  }

  _buildChildren() {
    List<TableRow> children = new List();
    children.add(TableRow(
      decoration: BoxDecoration(

      ),
      children: [
        Text('Name'),
        Text('Thamizharasu')
      ]
    ));

    children.add(TableRow(
      children: [
        Text('City'),
        Text('Chennai')
      ]
    ));

    children.add(TableRow(
      children: [
        Text('Pet'),
        Text('Cat')
      ]
    ));

    return children;
  }
}