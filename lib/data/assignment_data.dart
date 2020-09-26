import 'dart:convert';

class Assignment{
  String name;
  bool isComplete;
  int numberOfQuestions;
  String notes;
  double percentComplete;

  Assignment(
      {this.name,
      this.isComplete,
      this.numberOfQuestions,
      this.notes,
      this.percentComplete
    });

  factory Assignment.fromJson(Map<String, dynamic> json) {

    return Assignment(
        name: json['name'],
        isComplete: json['isComplete'],
        numberOfQuestions: json['numberOfQuestions'],
        notes: json['notes'],
        percentComplete: json['percentComplete']
        );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'isComplete': isComplete,
        'numberOfQuestions': numberOfQuestions,
        'notes' : notes,
        'percentComplete': percentComplete
      };
}