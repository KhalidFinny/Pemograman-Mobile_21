void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
}
//Mengeluarkan output {first: partridge, second: turtledoves, fifth: 1}
// Map 'gifts' menyimpan pasangan key-value bertipe campuran (String dan int).
  // Map 'nobleGases' juga bertipe campuran (int dan String/int).
  // print(gifts) dan print(nobleGases) menampilkan isi map ke konsol.
  // Map bisa berisi tipe data berbeda, tapi sebaiknya konsisten biar mudah.