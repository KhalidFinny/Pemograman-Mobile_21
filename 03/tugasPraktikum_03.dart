void main() {
  String nama = "Muhammad Khalid atthoriq";
  String nim = "2341720114";

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i -> Nama: $nama | NIM: $nim");
    } else {
      print("$i");
    }
  }
}

bool isPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i * i <= angka; i++) {
    if (angka % i == 0) return false;
  }
  return true;
}
