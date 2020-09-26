import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  ProgressBar({Key key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 60,
          child: Card(
            elevation: 8,
            child: Text("Progress Bar"),
          )),
    );
  }
}
