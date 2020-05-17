import 'package:dio_log/overlay_draggable_button.dart';
import 'package:flutter/material.dart';
import 'package:miku/model/theme_model.dart';
import 'package:miku/pages/splash.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<ThemeModel>(
      create: (_) => ThemeModel(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Miku Tools',
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ThemeModel>(context).themeData,
            home: SplashPage(),
          );
        },
      ),
    );
  }
}
