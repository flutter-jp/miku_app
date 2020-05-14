import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

class DialogUtil {
  static bool _isShowing = false;

  ///展示
  static Future showProgress(BuildContext context,
      {Widget child = const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.green),
      )}) async {
    if (!_isShowing) {
      _isShowing = true;
      return Navigator.push(
        context,
        _PopRoute(
          child: _Progress(
            child: child,
          ),
        ),
      );
    }
  }

  ///隐藏
  static void dismiss(BuildContext context) {
    if (_isShowing) {
      Navigator.of(context).pop();
      _isShowing = false;
    }
  }

  /// 显示一个自定义弹窗，有一个标题和一个内容区
  static showAlertDialog(
    context,
    String title,
    Widget widget, {
    width = 220.0,
    height,
    titleColor = Colors.black,
    titleFontSize = 14.0,
    borderRadius = 10.0,
    titlePadding = 25.0,
    showCallback,
    dismissCallback,
  }) {
    return YYDialog().build(context)
      ..width = width
      ..showCallBack = showCallback
      ..dismissCallBack = dismissCallback
      ..borderRadius = borderRadius
      ..text(
        padding: EdgeInsets.all(titlePadding),
        alignment: Alignment.center,
        text: title,
        color: titleColor,
        fontSize: titleFontSize,
        fontWeight: FontWeight.w500,
      )
      ..widget(widget)
      ..show();
  }

  /// 展示确认弹窗，一个ok，一个cancel,如果需要操作则传入对应的callback
  static Future showConfirmDialog(
    context,
    String title, {
    width = 300.0,
    height,
    buttonFontSize = 14.0,
    borderRadius = 10.0,
    okCallback,
    cancelCallback,
    showCallback,
    dismissCallback,
    okButtonColor = Colors.green,
    cancelButtonColor = Colors.redAccent,
    titleColor = Colors.black,
    titleFontSize = 14.0,
    titlePadding = 25.0,
  }) async {
    return YYDialog().build(context)
      ..width = width
      ..borderRadius = borderRadius
      ..showCallBack = showCallback
      ..dismissCallBack = dismissCallback
      ..text(
        padding: EdgeInsets.all(titlePadding),
        alignment: Alignment.center,
        text: title,
        color: titleColor,
        fontSize: titleFontSize,
        fontWeight: FontWeight.w500,
      )
      ..divider()
      ..doubleButton(
        padding: EdgeInsets.only(top: 10),
        gravity: Gravity.center,
        withDivider: true,
        text1: "取消",
        color1: cancelButtonColor,
        fontSize1: buttonFontSize,
        fontWeight1: FontWeight.bold,
        onTap1: () {
          if (cancelCallback != null) {
            cancelCallback();
          }
        },
        text2: "确定",
        color2: okButtonColor,
        fontSize2: buttonFontSize,
        fontWeight2: FontWeight.bold,
        onTap2: () {
          if (okCallback != null) {
            okCallback();
          }
        },
      )
      ..show();
  }

  static Future showOKDialog(BuildContext context, String title) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          actions: <Widget>[
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "确定",
              ),
              onPressed: () {
                Navigator.of(context).pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

///Widget
class _Progress extends StatelessWidget {
  final Widget child;

  _Progress({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Center(
          child: child,
        ));
  }
}

class _PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  _PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}

class DialogStyle {
  // 关闭按钮的颜色
  Color buttonColor = Colors.blue;

  // 关闭按钮的文字颜色
  Color buttonFontColor = Colors.white;

  // 关闭按钮的文字大小
  double buttonFontSize = 15;
}
