import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget {
  final BuildContext drawContext;

  const MyAppBar({
    Key key,
    @required this.drawContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[200],
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black54,
          size: 30,
        ),
        onPressed: () {
          Scaffold.of(drawContext).openDrawer();
        },
      ),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            FontAwesomeIcons.moon,
            color: Colors.blue,
            size: 25,
          ),
        )
      ],
    );
  }
}
