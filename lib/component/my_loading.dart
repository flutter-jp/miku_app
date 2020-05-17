import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(20),
      child: Center(
          child: LoadingIndicator(
        indicatorType: Indicator.ballClipRotateMultiple,
        color: Colors.blue,
      )),
    );
  }
}
