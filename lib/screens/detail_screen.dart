// Mengimpor widget dasar Flutter.
import 'package:flutter/material.dart';
// Mengimpor model Candi sebagai tipe parameter.
import 'package:wisata_candi/models/candi.dart';
// Mengimpor widget untuk memuat dan menyimpan cache gambar internet.
import 'package:cached_network_image/cached_network_image.dart';

// DetailScreen menampilkan detail satu objek Candi yang dikirim dari main.dart.
class DetailScreen extends StatelessWidget {
  // Data candi yang akan ditampilkan.
  final Candi candi;

  // Constructor DetailScreen; objek candi wajib diberikan.
  const DetailScreen({super.key, required this.candi});

  // Fungsi build menyusun tiga bagian layar: Header, Info, dan Gallery.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView memungkinkan seluruh halaman digulir.
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BAGIAN 1 - DetailHeader: gambar utama dan tombol back ditumpuk.
            Stack(
              children: [
                // Gambar utama dari folder images.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    // Membulatkan sudut gambar.
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      candi.imageAsset,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Tombol back diletakkan di atas gambar sebagai anak kedua Stack.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Container(
                    // Latar tombol berbentuk lingkaran dengan transparansi.
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100]?.withValues(alpha: 0.8),
                      shape: BoxShape.circle,
                    ),
                    // Callback tombol back masih kosong seperti pada slide.
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),

            // BAGIAN 2 - DetailInfo: nama, favorit, metadata, dan deskripsi.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  // Info atas: nama candi dan tombol favorit dalam Row.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        candi.name,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      // Callback favorit masih kosong seperti pada slide.
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                  // Jarak sebelum informasi tengah.
                  const SizedBox(height: 16),
                  // Baris informasi lokasi.
                  Row(children: [
                    const Icon(Icons.place, color: Colors.red),
                    const SizedBox(width: 8),
                    const SizedBox(width: 70, child: Text('Lokasi', style: TextStyle(fontWeight: FontWeight.bold))),
                    Text(': ${candi.location}'),
                  ]),
                  const SizedBox(height: 8),
                  // Baris informasi tahun pembangunan.
                  Row(children: [
                    const Icon(Icons.calendar_month, color: Colors.blue),
                    const SizedBox(width: 8),
                    const SizedBox(width: 70, child: Text('Dibangun', style: TextStyle(fontWeight: FontWeight.bold))),
                    Text(': ${candi.built}'),
                  ]),
                  const SizedBox(height: 8),
                  // Baris informasi tipe candi.
                  Row(children: [
                    const Icon(Icons.house, color: Colors.green),
                    const SizedBox(width: 8),
                    const SizedBox(width: 70, child: Text('Tipe', style: TextStyle(fontWeight: FontWeight.bold))),
                    Text(': ${candi.type}'),
                  ]),
                  // Pemisah sebelum bagian deskripsi.
                  const SizedBox(height: 16),
                  Divider(color: Colors.deepPurple.shade100),
                  const SizedBox(height: 16),
                  // Judul deskripsi.
                  const Text('Deskripsi', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  // Menampilkan deskripsi dari data candi.
                  Text(candi.description),
                ],
              ),
            ),

            // BAGIAN 3 - DetailGallery: foto horizontal yang dapat digeser.
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Colors.deepPurple.shade100),
                  // Judul galeri.
                  const Text('Galeri', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  // ListView horizontal memerlukan tinggi pasti dari SizedBox.
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      // Menggeser galeri ke samping.
                      scrollDirection: Axis.horizontal,
                      // Jumlah item mengikuti jumlah URL foto.
                      itemCount: candi.imageUrls.length,
                      // Membuat satu widget untuk tiap indeks foto.
                      itemBuilder: (context, index) {
                        return Padding(
                          // Memberi jarak di sisi kanan tiap foto.
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            // Callback ketuk foto masih kosong seperti pada slide.
                            onTap: () {},
                            child: Container(
                              // Bingkai foto galeri.
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.deepPurple.shade100, width: 2),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Memuat foto dari URL yang sesuai dengan index.
                                child: CachedNetworkImage(
                                  imageUrl: candi.imageUrls[index],
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.cover,
                                  // Placeholder tampil selama gambar diunduh.
                                  placeholder: (context, url) => Container(
                                    width: 120,
                                    height: 120,
                                    color: Colors.deepPurple[50],
                                  ),
                                  // Ikon error tampil jika gambar gagal dimuat.
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Petunjuk galeri yang ditampilkan kepada pengguna.
                  const Text('Tap untuk memperbesar', style: TextStyle(fontSize: 12, color: Colors.black54)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
