// void main() {
// var names1 = <String>{};
// Set<String> names2 = {};
// var names3 = {}; 

// print(names1);
// print(names2);
// print(names3);
// }

//Apa yang terjadi ? hanya engeluarkan output {} {} {}

void main() {
  var names1 = <String>{};
  Set<String> names2 = {};

  // Menambahkan elemen menggunakan .add()
  names1.add('khalid');
  names1.add('2341720114');

  // Menambahkan elemen menggunakan .addAll()
  names2.addAll(['khalid', '2341720114']);

  print(names1);
  print(names2);
}

//output {khalid, 2341720114}

/*
- add: Menambahkan satu elemen ke dalam Set.
- addAll: Menambahkan beberapa elemen sekaligus ke dalam Set (dari List atau Set lain).
*/
