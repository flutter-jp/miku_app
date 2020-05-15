import 'package:flutter/material.dart';
import 'package:miku/bean/tools_item.dart';

class ToolsPage extends StatelessWidget {
  final Icon icon;
  final List<ToolsItemBean> tools;

  const ToolsPage({
    Key key,
    @required this.tools,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
          child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 10 / 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: tools.map((item) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey[200],
              ),
            ),
            child: Text(
              item.name,
            ),
          );
        }).toList(),
      )),
    );
  }
}
