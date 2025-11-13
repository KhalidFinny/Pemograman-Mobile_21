# flutter_plugin_pubget

## Plugins
- `assets/Redtext.png`: 
Menambahkan plugin dan membuat widget RedText.
- `assets/Main.png`: 
Menambahkan widget rerd text ke halaman utama.
- `assets/Result.png`: 
Hasil akhir 

## Pertanyaan
### Jelaskan maksud dari langkah 2 pada praktikum tersebut!
Langkah 2 berfungsi mengecek apakah dependensi sudah terpasang; kalau instalasi berhasil, dependensi tersebut akan tercantum pada pubspec.yaml.

### Jelaskan maksud dari langkah 5 pada praktikum tersebut!

Karena widget ini akan digunakan berulang kali, teksnya perlu fleksibel mengikuti konteks pemakaian. Oleh sebab itu, nilai teks disuplai melalui parameter, dan pada tahap ini kita menyiapkan parameter `text` tersebut.

### Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

RedTextWidget memanfaatkan AutoSizeText, sedangkan widget Text memakai komponen Text biasa. AutoSizeText otomatis menyesuaikan ukuran huruf agar tetap muat di dalam wadahnya, sedangkan Text tidak memiliki mekanisme penyesuaian serupa.

### Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !
- minFontSize Menyatakan angka terkecil yang boleh dipakai saat AutoSizeText mengecilkan huruf. Nilai font tidak akan turun melewati batas ini dan opsi ini diabaikan bila presetFontSizes digunakan. Defaultnya 12.
- maxFontSize Menetapkan ukuran huruf terbesar yang diperbolehkan, berguna saat style mewarisi font besar dan ingin dibatasi. Pengaturan ini juga tidak berlaku jika presetFontSizes disetel.
- stepGranularity Mengatur selisih penyesuaian ukuran font ketika AutoSizeText mencari ukuran yang pas. Contohnya, nilai 10 akan mencoba ukuran 40, 30, 20, dan seterusnya. Sebaiknya tetap di atas 1 supaya performa tetap baik.
- presetFontSizes Berisi daftar ukuran font spesifik yang diizinkan. Bila daftar ini disediakan, pengaturan minFontSize, maxFontSize, dan stepGranularity diabaikan. Pastikan nilainya disusun menurun.
- group Merujuk ke instance AutoSizeGroup untuk menyamakan ukuran huruf di beberapa AutoSizeText sekaligus. Semua anggota grup akan mengikuti ukuran terkecil yang ditemukan.
- overflowReplacement Widget cadangan yang ditampilkan jika teks tetap meluap walaupun sudah dicoba diperkecil sampai batas minimum.
- wrapWords Menentukan apakah kata yang terlalu panjang boleh dipindah ke baris berikutnya. Nilai defaultnya true sehingga perilakunya mirip widget Text.