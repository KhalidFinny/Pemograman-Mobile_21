// void main(){
//   var mhs1 = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// var mhs2 = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';
// }

// error karena undefined name 'gifts' dan 'nobleGases'

void main() {
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['nama'] = 'khalid';
  mhs1['nim'] = '2341720114';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[2341720114] = 'khalid';

  print(mhs1);
  print(mhs2);
}

/*
Mengeluarkan output {first: partridge, second: turtledoves, fifth: golden rings, nama: khalid, nim: 2341720114}
Mengeluarkan output {2: helium, 10: neon, 18: argon, 2341720114: khalid}
- Program mendefinisikan dua buah Map.
- Map pertama (mhs1) bertipe Map<String, String>, berisi pasangan key-value bertipe String.
  Contoh: 'first' -> 'partridge', 'nama' -> 'khalid'.
- Map kedua (mhs2) bertipe Map<int, String>, berisi pasangan key bertipe int dan value bertipe String.
  Contoh: 2 -> 'helium', 2341720114 -> 'khalid'.
- Output yang dihasilkan adalah isi dari masing-masing Map sesuai urutan penambahan data.
- Map berguna untuk menyimpan data dalam format pasangan key-value, memungkinkan akses cepat berdasarkan key.
*/
