// void main(){
//   var list = [1, 2, 3];
// var list2 = [0, ...list];
// print(list1);
// print(list2);
// print(list2.length);
// }

//error pada list1 karena undefined name 'list1'

void main(){
  var list = [1, 2, 3];
var list2 = [0, ...list];
print(list);
print(list2);
print(list2.length);
}
/*
Mengeluarkan output [1, 2, 3]
Mengeluarkan output [0, 1, 2, 3]
Mengeluarkan output 4
Mendefinisikan sebuah list bernama 'list' yang berisi tiga elemen: 1, 2, dan 3.
Mendefinisikan list kedua bernama 'list2' yang berisi elemen 0 diikuti oleh semua elemen dari list pertama menggunakan operator spread (...).
hasil list2 menjadi [0, 1, 2, 3], karena batas spread sampai yang ditentukan oleh list pertama.
*/