import 'package:flutter/material.dart';

class MyNotice extends StatefulWidget {
  @override
  _MyNoticeState createState() => _MyNoticeState();
}

class _MyNoticeState extends State<MyNotice> {
  bool showNotice = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showNotice,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "欢迎使用MikuTools",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showNotice = !showNotice;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(3),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("目前共开发了数十款有趣的小功能,"
                    "数量还在持续增加中。如果觉得某一款不错，不妨安利给他人使用。遇到任何问题或建议都能在留言反馈中进行留言"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
