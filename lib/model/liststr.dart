class liststr {
  List<String> Heads = [];
  liststr(this.Heads) {}
  void add(String text) {
    Heads.add(text);
  }

  List<String> show() {
    return Heads;
  }
}
