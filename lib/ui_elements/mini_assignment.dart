import 'package:flutter/material.dart';
import 'package:hackathon_2020/data/assignment_data.dart';

class MiniAssignment extends StatefulWidget {
  final Assignment assignment;
  MiniAssignment({Key key, this.assignment}) : super(key: key);

  @override
  _MiniAssignmentState createState() => _MiniAssignmentState();
}

class _MiniAssignmentState extends State<MiniAssignment> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Card(
          child: Text("example"),
          elevation: 8,
        ));
  }
}
