import 'package:flutter/material.dart';
import 'package:hackathon_2020/ui_elements/banner.dart';
import 'package:hackathon_2020/ui_elements/long_class.dart';
import 'package:hackathon_2020/ui_elements/mini_assignment.dart';
import 'package:hackathon_2020/ui_elements/progress_bar.dart';
import 'package:hackathon_2020/main.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: ProgressBar(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 16, 2, 0),
              child: Text(
                "Daily Do's",
                style: TextStyle(fontSize: 26),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 2, 0),
                child: MiniAssignment(),
              );
            }, childCount: 5),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 16, 2, 0),
            child: Text(
              "Todo Tomorrow",
              style: TextStyle(fontSize: 26),
            ),
          )),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 2, 0),
                child: MiniAssignment(),
              );
            }, childCount: 6),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 16, 2, 0),
            child: Text(
              "Later",
              style: TextStyle(fontSize: 26),
            ),
          )),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(2, 4, 2, 0),
              child: LongClass(),
            );
          }, childCount: 3))
        ],
      ),
    );
  }
}
