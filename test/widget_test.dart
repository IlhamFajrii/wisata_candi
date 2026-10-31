import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/main.dart';
import 'package:wisata_candi/screens/detail_screen.dart';

void main() {
  setUpAll(() {
    // Mematikan error network di test environment
    HttpOverrides.global = null;
  });

  testWidgets('MyApp renders DetailScreen correctly', (WidgetTester tester) async {
    // Menjalankan aplikasi utama
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    // Verifikasi nama candi pertama (Candi Borobudur) muncul
    expect(find.text('Candi Borobudur'), findsOneWidget);
    // Verifikasi label dan nilai metadata (dengan format ': nilai')
    expect(find.text('Lokasi'), findsOneWidget);
    expect(find.text(': Magelang, Jawa Tengah'), findsOneWidget);
    expect(find.text('Dibangun'), findsOneWidget);
    expect(find.text(': Abad ke-9'), findsOneWidget);
    expect(find.text('Tipe'), findsOneWidget);
    expect(find.text(': Candi Buddha'), findsOneWidget);
    // Verifikasi judul Deskripsi dan Galeri
    expect(find.text('Deskripsi'), findsOneWidget);
    expect(find.text('Galeri'), findsOneWidget);
    expect(find.text('Tap untuk memperbesar'), findsOneWidget);
  });

  testWidgets('DetailScreen can render all 10 candi without exceptions', (WidgetTester tester) async {
    // Menguji seluruh 10 candi (indeks 0 s/d 9)
    for (int i = 0; i < candiList.length; i++) {
      final candi = candiList[i];
      await tester.pumpWidget(
        MaterialApp(
          home: DetailScreen(candi: candi),
        ),
      );
      await tester.pump();

      // Verifikasi nama candi ditemukan di layar
      expect(find.text(candi.name), findsOneWidget);
      // Verifikasi nilai metadata candi
      expect(find.text(': ${candi.location}'), findsOneWidget);
      expect(find.text(': ${candi.built}'), findsOneWidget);
      expect(find.text(': ${candi.type}'), findsOneWidget);
      // Verifikasi seluruh ikon utama ditemukan
      expect(find.byIcon(Icons.place), findsOneWidget);
      expect(find.byIcon(Icons.calendar_month), findsOneWidget);
      expect(find.byIcon(Icons.house), findsOneWidget);
      expect(find.byIcon(Icons.favorite_border), findsOneWidget);
      expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    }
  });
}
