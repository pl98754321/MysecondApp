import 'package:flutter/foundation.dart';

class Liststr with ChangeNotifier {
  List<String> Heads = [];
  Liststr(this.Heads) {}
  void addto(String text) {
    Heads.add(text);
  }

  List<String> re() => Heads;
}
