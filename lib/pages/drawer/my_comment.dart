import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              _buildBadge(),
              _buildVIPLink(),
              _buildCurrentDomainLink(),
              _buildConcatLink(),
              _buildDomainLink(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBadge() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.solidCircle,
            color: Colors.blue,
            size: 10,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2),
                child: Text("热门"),
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Icon(
                  FontAwesomeIcons.solidCircle,
                  color: Colors.red,
                  size: 10,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2),
                child: Text("新功能"),
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Icon(
                  FontAwesomeIcons.solidCircle,
                  color: Colors.green,
                  size: 10,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2),
                child: Text("推荐"),
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Icon(
                  FontAwesomeIcons.solidCircle,
                  color: Colors.blue,
                  size: 10,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2),
                child: Text("维护中"),
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Icon(
                  FontAwesomeIcons.solidCircle,
                  color: Colors.deepPurpleAccent,
                  size: 10,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2),
                child: Text("VIP"),
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Icon(
                  FontAwesomeIcons.solidCircle,
                  color: Colors.orange,
                  size: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentDomainLink() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.blue,
              size: 10,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "本站域名己切换为: ",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  "tools.miku.ac",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "请及时更换收藏夹",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildVIPLink() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.blue,
              size: 10,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text("VIP 购买地址: "),
                Text(
                  "http://pr.kuaifaka/com/item/N5Dgi",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildConcatLink() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.blue,
              size: 10,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text("有问题先: "),
                Text(
                  "点我",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDomainLink() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.blue,
              size: 10,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text("域名发布站: "),
                Text(
                  "https://github.com/Ice-Hazymoon/domains",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
