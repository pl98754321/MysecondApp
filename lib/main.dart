import 'package:flutter/material.dart';
import 'Page/emtypage.dart';
import 'bodyshow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SecondApp")),
      body: Feed(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("PressDer");
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EmtyPage(), fullscreenDialog: true),
          );
        },
        label: Row(
          children: [
            Icon(Icons.add),
            Text("  "),
            Text("อะไรรรรรร!!!!!"),
          ],
        ),
      ),
    );
  }
}
