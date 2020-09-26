import 'package:flutter/material.dart';
import 'package:hackathon_2020/ui_elements/long_assignment.dart';

import '../main.dart';

class Classes extends StatefulWidget {
  Classes({Key key}) : super(key: key);

  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: Container(
          child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return LongAssignment(
            data: mainData.data[index],
          );
        },
        itemCount: mainData.data != null ? mainData.data : 0,
      )),
    );
  }
}
