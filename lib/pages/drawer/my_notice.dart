import 'package:flutter/material.dart';

class MyNotice extends StatefulWidget {
  @override
  _MyNoticeState createState() => _MyNoticeState();
}

class _MyNoticeState extends State<MyNotice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Text("目前共开发了数十款有趣的小功能,"
          "数量还在持续增加中。"
          "如果觉得某一款不错，"
          "不妨安利给他人使用。"
          "遇到任何问题或建议都能在留言反馈中进行留言"),
    );
  }
}
