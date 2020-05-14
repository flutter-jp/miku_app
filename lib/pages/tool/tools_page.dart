import 'package:flutter/material.dart';
import 'package:miku/bean/tools_item.dart';

class ToolsPage extends StatelessWidget {
  final String title;
  final Icon icon;
  final List<ToolsItemBean> tools;

  const ToolsPage({
    Key key,
    @required this.title,
    @required this.tools,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: 80,
              height: 40,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  icon ?? Container(),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
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
            )
          ],
        ),
      ),
    );
  }
}
