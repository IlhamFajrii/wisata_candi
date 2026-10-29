// Mengimpor model Candi untuk membuat objek data.
import 'package:wisata_candi/models/candi.dart';

// Daftar objek Candi disesuaikan dengan seluruh aset gambar candi yang ada di folder images.
// Indeks 0 sampai 9 (Total 10 candi):
// 0 = Borobudur, 1 = Prambanan, 2 = Mendut, 3 = Plaosan, 4 = Sewu,
// 5 = Kalasan, 6 = Sari, 7 = Lumbung, 8 = Jago, 9 = Singosari.
var candiList = [
  // 0. Data Candi Borobudur
  Candi(
    name: 'Candi Borobudur',
    location: 'Magelang, Jawa Tengah',
    description:
        'Candi Borobudur, candi Buddha terbesar di Indonesia, dikenal dengan susunan teras dan relief yang menggambarkan ajaran Buddha. Candi ini merupakan salah satu warisan budaya penting di Indonesia.',
    built: 'Abad ke-9',
    type: 'Candi Buddha',
    imageAsset: 'images/borobudur.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 1. Data Candi Prambanan
  Candi(
    name: 'Candi Prambanan',
    location: 'Sleman, DI Yogyakarta',
    description:
        'Candi Prambanan adalah kompleks candi Hindu yang terkenal dengan bangunan menjulang dan relief kisah Ramayana.',
    built: 'Abad ke-9',
    type: 'Candi Hindu',
    imageAsset: 'images/prambanan.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 2. Data Candi Mendut
  Candi(
    name: 'Candi Mendut',
    location: 'Magelang, Jawa Tengah',
    description:
        'Candi Mendut merupakan candi Buddha di Kabupaten Magelang yang dikenal dengan arca Buddha dan relief pada bangunannya.',
    built: 'Sekitar abad ke-9',
    type: 'Candi Buddha',
    imageAsset: 'images/mendut.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 3. Data Candi Plaosan
  Candi(
    name: 'Candi Plaosan',
    location: 'Klaten, Jawa Tengah',
    description:
        'Candi Plaosan adalah kompleks candi kembar bercorak Buddha yang dibangun oleh Rakai Pikatan dari wangsa Sanjaya untuk permaisurinya, Pramodawardhani dari wangsa Syailendra, sebagai simbol cinta kasih lintas agama.',
    built: 'Abad ke-9',
    type: 'Candi Buddha',
    imageAsset: 'images/plaosan.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 4. Data Candi Sewu
  Candi(
    name: 'Candi Sewu',
    location: 'Klaten, Jawa Tengah',
    description:
        'Candi Sewu merupakan kompleks candi Buddha terbesar kedua di Jawa Tengah setelah Borobudur. Kompleks candi ini berusia lebih tua dari Candi Prambanan dan terdiri atas 249 bangunan candi.',
    built: 'Abad ke-8',
    type: 'Candi Buddha',
    imageAsset: 'images/sewu.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 5. Data Candi Kalasan
  Candi(
    name: 'Candi Kalasan',
    location: 'Sleman, DI Yogyakarta',
    description:
        'Candi Kalasan adalah candi Buddha tertua di kawasan Yogyakarta dan Prambanan, didirikan sebagai tempat pemujaan Dewi Tara dan biara bagi para biksu dengan lapisan semen kuno Bajralepa.',
    built: 'Tahun 778 M (Abad ke-8)',
    type: 'Candi Buddha',
    imageAsset: 'images/kalasan.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 6. Data Candi Sari
  Candi(
    name: 'Candi Sari',
    location: 'Sleman, DI Yogyakarta',
    description:
        'Candi Sari memiliki bentuk bangunan bertingkat dua yang khas dan indah, yang pada masa lampau berfungsi sebagai asrama atau vihara tempat tinggal para biksu Buddha pendamping Candi Kalasan.',
    built: 'Abad ke-8',
    type: 'Candi Buddha',
    imageAsset: 'images/sari.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 7. Data Candi Lumbung
  Candi(
    name: 'Candi Lumbung',
    location: 'Klaten, Jawa Tengah',
    description:
        'Candi Lumbung adalah candi Buddha yang terletak di dalam kawasan Taman Wisata Candi Prambanan, terdiri dari candi induk yang dikelilingi oleh 16 candi perwara.',
    built: 'Abad ke-9',
    type: 'Candi Buddha',
    imageAsset: 'images/lumbung.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 8. Data Candi Jago
  Candi(
    name: 'Candi Jago',
    location: 'Malang, Jawa Timur',
    description:
        'Candi Jago (berasal dari kata Jajaghu) adalah candi peninggalan Kerajaan Singasari yang dibangun sebagai penghormatan bagi Raja Wisnuwardhana, memiliki relief unik berunsur Siwa-Buddha.',
    built: 'Abad ke-13',
    type: 'Candi Hindu-Buddha',
    imageAsset: 'images/jago.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
  // 9. Data Candi Singosari
  Candi(
    name: 'Candi Singosari',
    location: 'Malang, Jawa Timur',
    description:
        'Candi Singosari merupakan candi peninggalan Kerajaan Singasari yang dibangun sebagai tempat pendharmaan Raja Kertanegara, dikenal dengan sepasang arca Dwarapala raksasa di dekatnya.',
    built: 'Sekitar 1300 M (Abad ke-14)',
    type: 'Candi Hindu-Buddha',
    imageAsset: 'images/singosari.jpeg',
    imageUrls: [
      'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600',
      'https://images.unsplash.com/photo-1604999333679-b86d54738315?w=600',
      'https://images.unsplash.com/photo-1566552881560-0be862a7c445?w=600',
    ],
  ),
];
