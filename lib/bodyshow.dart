import 'dart:async';
import 'package:flutter/material.dart';
import 'activity.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  void autosetstate() {
    Timer.periodic(Duration(milliseconds: 5), (_) {
      setState(() {});
    });
  }

  _FeedState() {
    autosetstate();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listwidget.length,
      itemBuilder: (BuildContext context, int index) {
        return Activity(listwidget[index], index);
      },
    );
  }
}

List<String> listwidget = ["One", "Two"];

void addtolist(String header) {
  listwidget.add(header);
}
