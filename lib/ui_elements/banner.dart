import 'package:flutter/material.dart';

class Banner extends StatefulWidget {
  Banner({Key key}) : super(key: key);

  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 70, child: Card());
  }
}
