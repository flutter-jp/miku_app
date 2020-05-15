import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miku/bean/tools_item.dart';
import 'package:miku/pages/drawer/my_drawer_page.dart';
import 'package:miku/pages/tool/tools_page.dart';

class IndexPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var tabList = getTabs();
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        key: _drawerKey,
        drawer: MyDrawerPage(),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _drawerKey.currentState.openDrawer();
            },
          ),
          actions: <Widget>[
            Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  FontAwesomeIcons.moon,
                  color: Colors.white,
                  size: 20,
                )),
          ],
          title: Text("Miku tools"),
          bottom: TabBar(
            isScrollable: true,
            tabs: tabList,
          ),
        ),
        body: TabBarView(
          children: List.generate(tabList.length, (index) {
            Tab tab = tabList[index];
            return ToolsPage(
              icon: tab.icon,
              tools: [
                ToolsItemBean(1, "Twitter视频下载", 1),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
                ToolsItemBean(2, "网易云刷等级", 2),
              ],
            );
          }),
        ),
      ),
    );
  }

  List getTabs() {
    return <Widget>[
      Tab(
        text: "神之世界",
      ),
      Tab(
        text: "其他工具",
      ),
      Tab(
        text: "数据换算",
      ),
      Tab(
        text: "图片相关",
      ),
      Tab(
        text: "文字处理",
      ),
      Tab(
        text: "编程开发",
      ),
      Tab(
        text: "网站相关",
      ),
      Tab(
        text: "过气工具",
      ),
    ];
  }
}
