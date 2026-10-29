# Wisata Candi — kode mengikuti slide

Project disusun mengikuti materi Widget Dasar Flutter 2, dengan komentar pada class, constructor, fungsi build, callback, dan bagian layout.

## Android Studio
1. Ekstrak ZIP.
2. Android Studio → Open → pilih folder `wisata_candi`.
3. View → Tool Windows → Terminal.
4. Jalankan `flutter pub get`.
5. Pilih emulator/perangkat, lalu tekan Run.

## Uji candi lain
Di `lib/main.dart`, ubah `candiList[0]` menjadi `candiList[1]` hingga `candiList[9]` untuk menguji 10 candi yang tersedia.

## Catatan kesesuaian
Susunan mengikuti slide: DetailHeader, DetailInfo, DetailGallery; memakai Stack, Row, Column, SingleChildScrollView, ListView.builder, Image.asset dan CachedNetworkImage. Callback tombol back, favorit, dan ketuk foto sengaja dibiarkan kosong sesuai slide karena fungsinya disebut sebagai materi lanjutan. Gambar lokal merupakan ilustrasi contoh; foto galeri memerlukan internet.
