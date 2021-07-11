import 'package:flutter/material.dart';
import 'package:flutter_application_2/bodyshow.dart';

class EmtyPage extends StatefulWidget {
  const EmtyPage({Key? key}) : super(key: key);

  @override
  _EmtyPageState createState() => _EmtyPageState();
}

class _EmtyPageState extends State<EmtyPage> {
  String tran = "";
  void submit(String tran) {
    Navigator.of(context).pop();
    if (tran != "") {
      setState(() {
        addtolist(tran);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EmtyPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "ชื่อ",
                icon: Icon(Icons.add),
              ),
              onSubmitted: (tran) {
                submit(tran);
              },
              onChanged: (String str) {
                tran = str;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            submit(tran);
          },
          label: Icon(Icons.done)),
    );
  }
}
