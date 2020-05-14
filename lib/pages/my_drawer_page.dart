import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          ),
          ListTile(
            leading: Icon(
              Icons.credit_card,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("会员中心"),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("更新日志"),
          ),
          ListTile(
            leading: Icon(
              Icons.widgets,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("贡献者名单"),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("关于Miku"),
          ),
        ],
      ),
    );
  }
}
