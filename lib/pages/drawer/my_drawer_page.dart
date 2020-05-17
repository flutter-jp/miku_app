import 'package:flutter/material.dart';
import 'package:miku/component/concat_me.dart';
import 'package:miku/config/app_config.dart';
import 'package:miku/pages/drawer/my_comment.dart';
import 'package:miku/pages/drawer/my_notice.dart';
import 'package:miku/utils/dialog_util.dart';
import 'package:miku/utils/navigator_util.dart';

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
          InkWell(
            onTap: () {
              NavigatorUtil.back(context);
              DialogUtil.showAlertDialog(
                context,
                "最新公告",
                MyComment(),
                width: MediaQuery.of(context).size.width,
                titlePadding: 5,
              );
            },
            child: ListTile(
              leading: Icon(
                Icons.credit_card,
                size: 30,
                color: Theme.of(context).textTheme.subtitle1.color,
              ),
              title: Text("最新公告"),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.credit_card,
              size: 30,
              color: Theme.of(context).textTheme.subtitle1.color,
            ),
            title: Text("会员中心"),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 30,
              color: Theme.of(context).textTheme.subtitle1.color,
            ),
            title: Text("更新日志"),
          ),
          InkWell(
            onTap: () {
              NavigatorUtil.back(context);
              DialogUtil.showAlertDialog(
                context,
                "您可以通过以下方式向我联系",
                ConcatMe(),
                width: MediaQuery.of(context).size.width / 1.1,
                titlePadding: 5,
              );
            },
            child: ListTile(
              leading: Icon(
                Icons.widgets,
                size: 30,
                color: Theme.of(context).textTheme.subtitle1.color,
              ),
              title: Text("联系我"),
            ),
          ),
          InkWell(
            onTap: () {
              NavigatorUtil.back(context);
              DialogUtil.showAlertDialog(
                context,
                "欢迎使用MikuTools",
                MyNotice(),
                width: MediaQuery.of(context).size.width / 1.1,
                titlePadding: 5,
              );
            },
            child: ListTile(
              leading: Icon(
                Icons.info_outline,
                size: 30,
                color: Theme.of(context).textTheme.subtitle1.color,
              ),
              title: Text("关于Miku"),
            ),
          ),
        ],
      ),
    );
  }
}
