import 'dart:convert';

import 'package:hackathon_2020/data/class_data.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import '../main.dart';

class DataManager{

  List<ClassData> data;

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
  return file.writeAsString(jsonEncode(mainData));
}

Future<String> readData() async {
  try {
    // Read the file.
    final file = await _localFile;

    String contents = await file.readAsString();
    print(contents);
    return contents;
  } catch (e) {
    // If encountering an error, return 0.
    return '';
  }
}}