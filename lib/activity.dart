import 'dart:async';
import 'package:flutter/material.dart';
import 'bodyshow.dart';

class Activity extends StatefulWidget {
  String header = "";
  int index = 0;
  Activity(String head, int index) {
    this.header = head;
    this.index = index;
  }

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  DateTime? fix;
  @override
  Widget build(BuildContext context) {
    Duration dif = DateTime.now().difference(fix ?? DateTime.now());
    return ListTile(
      title: Row(
        children: [
          Text(widget.header),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(
                () {
                  listwidget.remove(listwidget[widget.index]);
                  print(listwidget);
                },
              );
            },
          )
        ],
      ),
      subtitle: Text(
          "${dif.inHours % 24} hr ${dif.inMinutes % 60} min ${dif.inSeconds % 60} sec later"),
      onLongPress: () {
        setState(
          () {
            fix = DateTime.now();
            print("change ok?");
          },
        );
      },
      onTap: () {
        setState(() {});
      },
    );
  }
}
