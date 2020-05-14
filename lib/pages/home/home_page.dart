import 'package:flutter/material.dart';
import 'package:miku/component/concat_me.dart';
import 'package:miku/component/drawer_switch.dart';
import 'package:miku/pages/home/my_comment.dart';
import 'package:miku/pages/home/my_notice.dart';
import 'package:miku/pages/home/my_search_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  MyAppBar(drawContext: context,),
                  MyNotice(),
                  MySearchBox(
                    color: Colors.white,
                    hintText: "搜索工具",
                  ),
                  MyComment(),
                ],
              ),
              ConcatMe()
            ],
          ),
        ),
      ),
    );
  }
}
