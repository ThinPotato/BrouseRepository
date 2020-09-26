import 'package:flutter/material.dart';
import 'package:hackathon_2020/Classes/extended_class_view.dart';
import 'package:hackathon_2020/data/assignment_data.dart';
import 'package:hackathon_2020/data/class_data.dart';

class LongClass extends StatefulWidget {
  final ClassData data;
  LongClass({Key key, this.data}) : super(key: key);

  @override
  _LongClassState createState() => _LongClassState();
}

class _LongClassState extends State<LongClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        elevation: 8,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExtendedClassView(
                          data: widget.data,
                        )));
          },
        ),
      ),
    );
  }
}
