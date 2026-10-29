// Mengimpor widget Flutter.
import 'package:flutter/material.dart';
// Mengimpor data daftar candi.
import 'package:wisata_candi/data/candi_data.dart';
// Mengimpor layar detail candi.
import 'package:wisata_candi/screens/detail_screen.dart';

// Fungsi utama yang menjalankan aplikasi.
void main() => runApp(const MyApp());

// Widget utama aplikasi Wisata Candi.
class MyApp extends StatelessWidget {
  // Constructor MyApp.
  const MyApp({super.key});

  // Membangun tema aplikasi dan menentukan halaman awal.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Ganti candiList[0] menjadi candiList[1] hingga candiList[9]
      // untuk menguji data 10 candi yang tersedia sesuai aset di proyek.
      home: DetailScreen(candi: candiList[9]),
    );
  }
}
