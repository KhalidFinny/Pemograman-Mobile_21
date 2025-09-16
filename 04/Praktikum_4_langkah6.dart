void main (){
  var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
}
/*
Mengeluarkan output [#0, #1, #2, #3]
Manfaat collection for
- Memudahkan pembuatan dan manipulasi koleksi data secara dinamis.
- Membantu menghasilkan list, set, atau map dengan elemen yang dihasilkan dari perulangan.
- Membuat kode lebih ringkas, mudah dibaca, dan efisien.
- Mengurangi boilerplate dibandingkan dengan penggunaan loop konvensional.
- Memudahkan filtering dan transformasi data langsung saat membangun koleksi.
*/