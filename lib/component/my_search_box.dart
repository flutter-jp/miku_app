import 'package:flutter/material.dart';

class MySearchBox extends StatefulWidget {
  final String hintText;
  final VoidCallback onTap;
  final ValueChanged<String> onSubmitted;
  final Color color;
  final bool autoFocus;
  final String keyWord;

  const MySearchBox({
    Key key,
    this.hintText = "",
    this.keyWord = "",
    this.onSubmitted,
    this.color = Colors.grey,
    this.onTap,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  _MySearchBoxState createState() => _MySearchBoxState();
}

class _MySearchBoxState extends State<MySearchBox> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.keyWord);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: TextField(
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap();
          }
        },
        onSubmitted: (value) {
          if (widget.onSubmitted != null) {
            widget.onSubmitted(value);
          }
        },
        controller: controller,
        autofocus: widget.autoFocus,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.search),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            fillColor: widget.color,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }
}
