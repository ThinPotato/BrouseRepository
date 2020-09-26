  
import 'dart:convert';
import 'dart:ui';

import 'package:hackathon_2020/data/exam_data.dart';

import 'assignment_data.dart';

class ClassData {
  final String name;
  final Color color;
  List<Assignment> assignmentList = new List<Assignment>();
  List<Exam> examList = new List<Exam>();

  ClassData({this.name, this.color, this.assignmentList});

  factory ClassData.fromJson(Map<String, dynamic> parsedJson) {
    var list = jsonDecode(parsedJson['assignmentList']) as List;
    print(list.runtimeType);
    List<Assignment> assignmentList2 = list != null
        ? list.map((i) => Assignment.fromJson(i)).toList()
        : List();

    return ClassData(
        name: parsedJson['name'],
        color: Color(parsedJson['color']),
        assignmentList: assignmentList2);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'color': color.value,
        'assignmentList':
            jsonEncode(assignmentList) //New toJson method might not work here
      };

}