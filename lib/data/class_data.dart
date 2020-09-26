import 'dart:convert';
import 'dart:ui';

import 'package:hackathon_2020/data/exam_data.dart';

import 'assignment_data.dart';

class ClassData {
  final String name;
  final Color color;
  List<Assignment> assignmentList = new List<Assignment>();
  List<Exam> examList = new List<Exam>();

  ClassData({this.name, this.color, this.assignmentList, this.examList});

  factory ClassData.fromJson(Map<String, dynamic> parsedJson) {
    var list = jsonDecode(parsedJson['assignmentList']) as List;
    print(list.runtimeType);
    List<Assignment> assignmentList2 = list != null
        ? list.map((i) => Assignment.fromJson(i)).toList()
        : List();

    var list2 = jsonDecode(parsedJson['examList']) as List;
    print(list2.runtimeType);
    List<Exam> assignmentList3 =
        list2 != null ? list2.map((i) => Exam.fromJson(i)).toList() : List();

    return ClassData(
        name: parsedJson['name'],
        assignmentList: assignmentList2,
        examList: assignmentList3);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'assignmentList': jsonEncode(assignmentList),
        'examList': jsonEncode(examList)
        //New toJson method might not work here
      };
}
