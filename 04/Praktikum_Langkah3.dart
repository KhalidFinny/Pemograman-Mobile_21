void main() {
  // final list = List.filled(5, null, growable: false);
  final List<String?> list= List.filled(5, null, growable: false);

  // list[1] = "khalid";
  // list[2] = "2341720113"; //Error karena tidak menentukan tipe list

  list[1] = "khalid";
  list[2] = "2341720113"; //Setelah menneutuka tipe list ke string

  print(list);
}
