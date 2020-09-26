import 'package:flutter/material.dart';
import 'package:hackathon_2020/data/class_data.dart';
import 'package:hackathon_2020/ui_elements/long_assignment.dart';

import '../main.dart';
import '../main.dart';

class Classes extends StatefulWidget {
  Classes({Key key}) : super(key: key);

  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  callback(ClassData data) {
    print('called');
    setState(() {
      mainData.data.add(data);
    });
    mainData.writeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => NewClass(
                    parent: this,
                  ));
        },
        child: Icon(Icons.add),
      ),
      body: Container(
          child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return LongAssignment(
            data: mainData.data[index],
          );
        },
        itemCount: mainData.data != null ? mainData.data.length : 0,
      )),
    );
  }
}

class NewClass extends StatelessWidget {
  final _ClassesState parent;
  const NewClass({Key key, this.parent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        child: TextField(
          autofocus: true,
          onSubmitted: (String value) {
            Navigator.pop(context);
            ClassData newClass =
                new ClassData(name: value, assignmentList: List());
            parent.callback(newClass);
          },
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: 'name'),
        ),
      ),
    );
  }
}
