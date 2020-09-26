import 'package:flutter/material.dart';
import 'package:hackathon_2020/data/assignment_data.dart';
import 'package:hackathon_2020/data/class_data.dart';

class LongAssignment extends StatefulWidget {
  final Assignment data;
  LongAssignment({Key key, this.data}) : super(key: key);

  @override
  _LongAssignmentState createState() => _LongAssignmentState();
}

class _LongAssignmentState extends State<LongAssignment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        elevation: 8,
      ),
    );
  }
}
