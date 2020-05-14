import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:miku/pages/home/home_page.dart';
import 'package:miku/pages/my_drawer_page.dart';
import 'package:miku/pages/tool/tools_navigator_page.dart';

/// 主面板：承载页面和导航
class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      drawer: MyDrawerPage(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            _onTapHandler(context, index);
          },
          items: buildNavigators(context)),
    );
  }

  final List<Widget> pages = [
    HomePage(),
    ToolsNavigatorPage(),
  ];

  List<BottomNavigationBarItem> buildNavigators(context) {
    return [
      BottomNavigationBarItem(
        title: Text("首页"),
        icon: _buildBoolIcon(Icons.home),
      ),
      BottomNavigationBarItem(
        title: Text("工具"),
        icon: _buildBoolIcon(Icons.category),
      ),
    ];
  }

  Widget _buildBoolIcon(IconData icon, {bool show = false}) {
    if (show) {
      return Badge(
          position: BadgePosition.topRight(top: -10, right: -15),
          badgeContent: Text(
            "",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          child: Icon(
            icon,
          ));
    }

    return Icon(icon);
  }

  void _onTapHandler(context, int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
