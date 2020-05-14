import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';

class ToastUtil {
  static toast(String msg, BuildContext context, {duration = 3, position = 1}) {
    Toast.show(msg, context, gravity: position, duration: duration);
  }
}
