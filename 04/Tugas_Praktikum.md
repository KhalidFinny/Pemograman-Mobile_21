
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
    
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
Functions dalam bahasa Dart adalah blok kode yang dapat dijalankan berulang kali untuk melakukan tugas tertentu. Fungsi digunakan untuk mengorganisasi program, mengurangi duplikasi kode, dan meningkatkan keterbacaan.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
- Positional Parameters
Parameter wajib yang harus diisi sesuai urutan ketika memanggil fungsi. Tidak bisa dilewati.
void greet(String name, int age) { ... }
greet("Finn", 21);

- Optional Positional Parameters [ ]
Parameter opsional yang dibungkus dengan [ ]. Bisa kosong atau diberi default value.
void greet(String name, [int age = 18]) { ... }
greet("Finn");

- Required Named Parameters
Parameter named yang wajib diisi menggunakan keyword required. Memudahkan validasi saat pemanggilan fungsi.
void doSomething(void Function(String) callback) { ... }
doSomething((n) => print("Hello $n"));

- Callback Parameters (Function as Parameter)
Parameter berupa fungsi lain yang dijalankan di dalam fungsi utama. Dipakai untuk event, async, atau custom logic.
void doSomething(void Function(String) callback) { ... }
doSomething((n) => print("Hello $n"));

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
Dalam Dart, functions adalah first-class objects, artinya fungsi diperlakukan sama seperti objek lain (misalnya String atau int). Fungsi bisa disimpan dalam variabel, dikirim sebagai parameter, atau dikembalikan dari fungsi lain.
Contoh:
void greet(String name) {
  print("Halo $name");
}

void main() {
  // simpan fungsi ke variabel
  var sayHello = greet;
  sayHello("Finn");

  // kirim fungsi sebagai parameter
  void execute(Function f) {
    f("Alex");
  }
  execute(greet);
}

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
Anonymous Function adalah fungsi yang tidak memiliki nama dan biasanya digunakan saat fungsi hanya dipanggil sekali atau sebagai parameter. Fungsinya sama seperti fungsi biasa, hanya saja lebih ringkas karena langsung ditulis di tempat.
void main() {
  // Anonymous function sebagai variabel
  var sayHello = (String name) {
    print("Halo $name");
  };
  sayHello("Finn");

  // Anonymous function sebagai parameter (callback)
  List<String> names = ["Finn", "Alex", "Nora"];
  names.forEach((n) {
    print("Nama: $n");
  });
}

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
Lexical scope berarti ruang lingkup variabel ditentukan berdasarkan posisi kode pada saat penulisan (compile time), bukan saat runtime. Jadi, sebuah fungsi hanya bisa mengakses variabel yang berada di dalam scope-nya atau scope di atasnya.
void main() {
  var name = "Finn";

  void sayHello() {
    print("Halo $name"); // bisa akses "name" dari scope luar
  }

  sayHello(); // Output: Halo Finn
}

Lexical closure adalah fungsi yang “mengikat” variabel dari scope luar meskipun scope tersebut sudah selesai dieksekusi. Variabel tetap “hidup” karena dibawa oleh fungsi itu.
Function makeCounter() {
  var count = 0;

  return () {
    count++;
    return count;
  };
}

void main() {
  var counter = makeCounter(); 
  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3
}

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
1. Menggunakan List
Mengembalikan beberapa nilai dalam bentuk list. Cocok kalau tipenya sama.
List<int> hitung(int a, int b) {
  return [a + b, a - b, a * b];
}

void main() {
  var hasil = hitung(10, 5);
  print("Tambah: ${hasil[0]}");
  print("Kurang: ${hasil[1]}");
  print("Kali: ${hasil[2]}");
}

2. Menggunakan Map
Mengembalikan nilai dengan key. Lebih jelas untuk tipe berbeda.
Map<String, dynamic> biodata() {
  return {
    "nama": "Finn",
    "umur": 21,
    "status": "Mahasiswa"
  };
}

void main() {
  var data = biodata();
  print("Nama: ${data['nama']}, Umur: ${data['umur']}");
}

3. Menggunakan Class / Record
Cara paling rapi adalah membuat class khusus.
class Hasil {
  int tambah;
  int kali;
  Hasil(this.tambah, this.kali);
}

Hasil hitung(int a, int b) {
  return Hasil(a + b, a * b);
}

void main() {
  var h = hitung(4, 3);
  print("Tambah: ${h.tambah}, Kali: ${h.kali}");
}
