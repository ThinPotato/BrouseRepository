import 'dart:convert';

import 'package:hackathon_2020/data/assignment_data.dart';
import 'package:hackathon_2020/data/class_data.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import '../main.dart';

class DataManager {
  List<ClassData> data = List();

  DataManager() {
    _getClassData();
  }

  Future<void> _getClassData() async {
    String s = await readData();
    print(s);
    if (s.length > 1) {
      List<dynamic> parsedJson = jsonDecode(s);
      data = parsedJson.map((f) => ClassData.fromJson(f)).toList();
    }
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<File> writeData() async {
    final file = await _localFile;
    // Write the file.
    return file.writeAsString(jsonEncode(data));
  }

  Future<String> readData() async {
    try {
      // Read the file.
      final file = await _localFile;

      String contents = await file.readAsString();
      print(contents);
      return contents;
    } catch (e) {
      print('error');
      // If encountering an error, return 0.
      return '';
    }
  }
}
