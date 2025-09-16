// void main () {
// list1 = [1, 2, null];
// print(list1);
// var list3 = [0, ...?list1];
// print(list3.length); 
// }
//error karena list1 undefined name 'list1'

void main () {
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length); 

  var nim = [2, 1, 0, 3, 4, 5, 6, 7]; // contoh NIM
  var listNim = [...nim];
  print(listNim);
}
/*
Mengeluarkan output [1, 2, null]
Mengeluarkan output 4
Mengeluarkan output [2, 1, 0, 3, 4, 5, 6, 7]
- Program mendefinisikan sebuah list bernama 'list1' yang berisi tiga elemen: 1, 2, dan null.
- Program mendefinisikan sebuah list bernama 'list3' yang berisi elemen 0 diikuti oleh semua elemen dari list1 jika tidak null.
- Program mendefinisikan sebuah list bernama 'listNim' yang berisi semua elemen dari list nim.
- Output yang dihasilkan adalah isi dari masing-masing list sesuai urutan penambahan data.
- Operator spread (...) digunakan untuk menyebarkan elemen-elemen dari sebuah list ke dalam list baru, sedangkan operator null-aware spread (...?) hanya menyebarkan elemen-elemen jika list sumber tidak null.
*/