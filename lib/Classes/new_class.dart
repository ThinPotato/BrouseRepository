import 'package:flutter/material.dart';
import 'package:hackathon_2020/Classes/classes.dart';

enum SingingCharacter { one, two, three, four, five }

class NewClass extends StatefulWidget {
  final ClassesState parent;
  NewClass({Key key, this.parent}) : super(key: key);

  @override
  _NewClassState createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Class"),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [ClassDifficulty(), Items()],
      ),
    );
  }
}

class Items extends StatefulWidget {
  Items({Key key}) : super(key: key);

  @override
  ItemsState createState() => ItemsState();
}

class ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(onPressed: null, child: Text("  Add Exam  ")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(onPressed: null, child: Text("Add Homework")),
        )
      ],
    ));
  }
}

class ClassDifficulty extends StatefulWidget {
  ClassDifficulty({Key key}) : super(key: key);

  @override
  _ClassDifficultyState createState() => _ClassDifficultyState();
}

class _ClassDifficultyState extends State<ClassDifficulty> {
  SingingCharacter _character = SingingCharacter.four;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          "Class Diffculty",
          style: TextStyle(fontSize: 22),
        ),
        Text(
            "Experts say a good student should study three hours a week per credit."),
        Column(
          children: <Widget>[
            ListTile(
              title: const Text('Very Easy (10 minutes per credit)'),
              leading: Radio(
                value: SingingCharacter.one,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Easy (30 minutes per credit)'),
              leading: Radio(
                value: SingingCharacter.two,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Average (1 hour per credit)'),
              leading: Radio(
                value: SingingCharacter.three,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Difficult (3 hours per credit)'),
              leading: Radio(
                value: SingingCharacter.four,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Hard (4 hours per credit)'),
              leading: Radio(
                value: SingingCharacter.five,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ],
        )
      ],
    ));
  }
}
