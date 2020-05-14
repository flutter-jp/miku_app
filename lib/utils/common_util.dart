import 'package:flutter/material.dart';

enum LocaleEnum { cn, en, ja }

class CommonUtil {
  static themeColors() {
    return [
      Colors.blue,
      Colors.purple,
      Colors.orange,
      Colors.deepPurpleAccent,
      Colors.redAccent,
      Colors.amber,
      Colors.green,
      Colors.lime,
      Colors.indigo,
      Colors.cyan,
      Colors.teal,
      Colors.black,
    ];
  }

  /// 尊敬的用户{0}您好，您一共消费了{1}元
  static format(String content, {String param, List<String> params}) {
    // 单个参数
    if (param != null) {
      return content.replaceAll('{0}', param);

      // 多个参数
    } else if (params != null) {
      params.asMap().forEach((index, param) {
        content = content.replaceAll('{$index}', param);
      });
      return content;
    }
  }

  ///format number to local number.
  ///example 10001 -> 1万
  ///        100 -> 100
  ///        11000-> 1.1万
  String getFormattedNumber(int number) {
    if (number < 10000) {
      return number.toString();
    }
    number = number ~/ 10000;
    return "$number万";
  }

  static transLocale({LocaleEnum localeEnum, String localeStr}) {
    int index = 0;
    if (localeEnum != null) {
      index = localeEnum.index;
    } else if (localeStr != null) {
      index = int.parse(localeStr);
    }

    switch (index) {
      case 0:
        return Locale('zh', 'CN');
      case 1:
        return Locale('en', 'US');
      case 2:
        return Locale('ja', 'JP');
    }
    return Locale('zh', 'CN');
  }

  ///大陆手机号码11位数，匹配格式：前三位固定格式+后8位任意数
  /// 此方法中前三位格式有：
  /// 13+任意数 * 15+除4的任意数 * 18+除1和4的任意数 * 17+除9的任意数 * 147
  static bool isChinaPhone(String str) {
    return new RegExp(
            '^((13[0-9])|(15[^4])|(166)|(17[0-8])|(18[0-9])|(19[8-9])|(147,145))\\d{8}\$')
        .hasMatch(str);
  }

  /// 判断是不是邮箱
  static bool isEmail(String str) {
    return RegExp(
            '^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+\$')
        .hasMatch(str);
  }

  static Widget transTag(int tag) {
    Color color = Colors.green;
    String content = "默认";
    switch (tag) {
      case 1:
        content = "家";
        color = Colors.orange;
        break;
      case 2:
        content = "公司";
        color = Colors.pink;
        break;
      case 3:
        content = "朋友家";
        color = Colors.blue;
        break;
      default:
        content = "默认";
        color = Colors.green;
    }

    return Container(
      margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
      child: Chip(
        label: Text(
          content,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: color,
      ),
    );
  }
}
