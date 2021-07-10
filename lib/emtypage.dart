import 'package:flutter/material.dart';
import 'package:flutter_application_2/bodyshow.dart';

class EmtyPage extends StatefulWidget {
  const EmtyPage({Key? key}) : super(key: key);

  @override
  _EmtyPageState createState() => _EmtyPageState();
}

class _EmtyPageState extends State<EmtyPage> {
  String tran = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EmtyPage"),
      ),
      body: TextField(
        onChanged: (String str) {
          tran = str;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pop();
            if (tran != "") {
              setState(() {
                addtolist(tran);
              });
            }
          },
          label: Icon(Icons.done)),
    );
  }
}
