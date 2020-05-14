import 'package:flutter/material.dart';
import 'package:miku/config/app_config.dart';

class MyDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("xiaomo@xiaomo.info"),
            accountName: Text("小莫"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                AppConfig.avatar,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    AppConfig.accountBg,
                  ),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
