import 'package:flutter/material.dart';
import 'package:hackathon_2020/data/class_data.dart';
import 'package:hackathon_2020/ui_elements/long_assignment.dart';

class ExtendedClassView extends StatefulWidget {
  //TODO: Change data to be a reference to shceduled day
  final ClassData data;
  ExtendedClassView({Key key, this.data}) : super(key: key);

  @override
  ExtendedClassViewState createState() => ExtendedClassViewState();
}

class ExtendedClassViewState extends State<ExtendedClassView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.data.name != null ? widget.data.name : ""),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text("DateTime"),
              ListView.separated(
                itemCount: widget.data.assignmentList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return LongAssignment(
                    data: widget.data.assignmentList[index],
                  );
                },
              ),
            ],
          );
        }));
  }
}
