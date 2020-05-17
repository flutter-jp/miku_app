import 'package:dio_log/overlay_draggable_button.dart';
import 'package:flutter/material.dart';
import 'package:miku/pages/splash.dart';

void main() {
  runApp(MikuApp());
}

class MikuApp extends StatefulWidget {
  @override
  _MikuAppState createState() => _MikuAppState();
}

class _MikuAppState extends State<MikuApp> {
  @override
  void initState() {
    super.initState();
    showDebugBtn(context);

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miku Tools',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
