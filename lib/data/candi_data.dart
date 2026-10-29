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
      'https://media-cdn.tripadvisor.com/media/photo-o/11/cd/4f/71/borobudur-and-the-sky.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/cd/5d/36/borobudur-airial-view.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/cd/4d/c7/borobudur-and-the-sky.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/cd/47/0e/borobudur-sunset-moment.jpg',
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
      'images/prambanan.jpeg',
      'http://media-cdn.tripadvisor.com/media/photo-o/11/d3/f4/02/main-prambanan-temple.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/d3/f3/fb/main-prambanan-temple.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/cd/21/b5/prambanan-diwaktu-malam.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/cd/21/a1/prambanan-yang-luas-dan.jpg',
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
      'images/mendut.jpeg',
      'https://media-cdn.tripadvisor.com/media/photo-o/08/8d/bd/dc/photo1jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/08/30/84/fe/detail.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/07/9c/66/49/parc-du-monastere.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/07/64/89/fe/candi-mendut-temple.jpg',
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
      'images/plaosan.jpeg',
      'https://media-cdn.tripadvisor.com/media/photo-o/15/64/fe/2c/candi-plaosan-nan-exotic.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0b/9b/16/eb/candi-plaosan-merupakan.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/04/d1/be/8d/candi-plaosan.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/28/14/e5/d4/caption.jpg',
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
      'https://media-cdn.tripadvisor.com/media/photo-o/16/29/03/ec/dsc-5480-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/13/9a/31/8e/caption.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/14/78/fd/64/dsc-0395-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/16/10/f6/55/20181224-104447-largejpg.jpg',
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
      'https://media-cdn.tripadvisor.com/media/photo-o/11/49/7f/c6/img-20171102-100329-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/d1/15/1b/papan-nama-peringatan.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/b4/4a/9d/caption.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/bd/3b/88/20161127-152738-largejpg.jpg',
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
      'http://media-cdn.tripadvisor.com/media/photo-o/0d/7a/26/27/p-20150104-102350-hdr.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/17/e4/b5/32/komplek-candi-sari.jpg',
      'http://media-cdn.tripadvisor.com/media/photo-o/13/46/0c/0e/cube.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/13/46/09/6d/high-wall.jpg',
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
      'https://media-cdn.tripadvisor.com/media/photo-o/28/11/e1/80/lumbung-temple.jpg',
      'http://media-cdn.tripadvisor.com/media/photo-o/28/11/e1/73/lumbung-temple.jpg',
      'http://media-cdn.tripadvisor.com/media/photo-o/28/11/e1/21/lumbung-temple.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/28/11/e1/33/lumbung-temple.jpg',
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
      'https://media-cdn.tripadvisor.com/media/photo-o/08/75/ab/a3/photo2jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/08/75/ab/a1/photo0jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/05/60/f7/12/jhago-temple.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/05/60/f6/e5/jhago-temple.jpg',
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
      'https://media-cdn.tripadvisor.com/media/photo-o/06/c9/d4/f2/candi-singosari.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/ca/37/49/candi-cungkup-candirenggo.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/15/a2/c0/8d/dvarapala.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/15/a2/c0/88/singosari-temple-kala.jpg',
    ],
  ),
];
