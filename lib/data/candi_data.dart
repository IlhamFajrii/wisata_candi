// Mengimpor model Candi untuk membuat objek data.
import 'package:wisata_candi/models/candi.dart';

// Daftar objek Candi. Indeks 0 = Borobudur, 1 = Prambanan, 2 = Mendut.
var candiList = [
  // Data Candi Borobudur.
  Candi(
    name: 'Candi Borobudur',
    location: 'Magelang, Jawa Tengah',
    description: 'Candi Borobudur, candi Buddha terbesar di Indonesia, dikenal dengan susunan teras dan relief yang menggambarkan ajaran Buddha. Candi ini merupakan salah satu warisan budaya penting di Indonesia.',
    built: 'Abad ke-9',
    type: 'Candi Buddha',
    imageAsset: 'images/borobudur.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // Data Candi Prambanan.
  Candi(
    name: 'Candi Prambanan',
    location: 'Sleman, DI Yogyakarta',
    description: 'Candi Prambanan adalah kompleks candi Hindu yang terkenal dengan bangunan menjulang dan relief kisah Ramayana.',
    built: 'Abad ke-9',
    type: 'Candi Hindu',
    imageAsset: 'images/prambanan.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // Data Candi Mendut.
  Candi(
    name: 'Candi Mendut',
    location: 'Magelang, Jawa Tengah',
    description: 'Candi Mendut merupakan candi Buddha di Kabupaten Magelang yang dikenal dengan arca Buddha dan relief pada bangunannya.',
    built: 'Sekitar abad ke-9',
    type: 'Candi Buddha',
    imageAsset: 'images/mendut.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
];
