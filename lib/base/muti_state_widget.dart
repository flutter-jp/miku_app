import 'package:flutter/material.dart';
import 'package:miku/base/base_state.dart';
import 'package:miku/component/my_loading.dart';

typedef Content = Widget Function(BuildContext context);

class MultiStateWidget extends StatefulWidget {
  final Widget loadingWidget;
  final Widget emptyWidget;
  final Widget failWidget;
  final Content builder;
  final BaseState state;

  MultiStateWidget(
    this.loadingWidget,
    this.emptyWidget,
    this.failWidget,
    this.builder,
    this.state,
  );

  @override
  _MultiStateWidgetState createState() => _MultiStateWidgetState();
}

class _MultiStateWidgetState extends State<MultiStateWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.state == null) {
      return Container(width: 0, height: 0);
    }
    if (widget.state == BaseState.CONTENT) {
      return widget.builder(context);
    } else if (widget.state == BaseState.EMPTY) {
      return widget.emptyWidget ?? EmptyStateWidget();
    } else if (widget.state == BaseState.FAIL) {
      return widget.failWidget ?? ErrorStateWidget();
    } else {
      return widget.loadingWidget ?? LoadingStateWidget();
    }
  }
}

class EmptyStateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "暂无数据",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class ErrorStateWidget extends StatelessWidget {
  final String reason;

  ErrorStateWidget({this.reason});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          reason ?? "请求失败",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}

class LoadingStateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Loading();
  }
}
