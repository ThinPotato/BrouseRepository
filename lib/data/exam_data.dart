
class Exam{
  String name;
  bool isComplete;
  DateTime dueDate;
  List<String> topicList = new List<String>();
  double percentComplete =0.0;

  Exam(
      {this.name,
      this.isComplete,
      this.dueDate, 
      this.topicList, 
      this.percentComplete
    });

  factory Exam.fromJson(Map<String, dynamic> json) {

    return Exam(
        name: json['name'],
        isComplete: json['isComplete'],
        dueDate: json['dueDate'],
        topicList: json['topicList'],
        percentComplete: json['percentComplete']
        );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'isComplete': isComplete,
        'dueDate' : dueDate,
        'topicList' : topicList,
        'percentComplete': percentComplete
      };
}