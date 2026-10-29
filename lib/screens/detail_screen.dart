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

  // Fungsi pembantu untuk menampilkan foto galeri (mendukung URL web dan path lokal).
  Widget _buildGalleryItem(String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return CachedNetworkImage(
        imageUrl: path,
        width: 120,
        height: 120,
        fit: BoxFit.cover,
        // Indikator loading saat gambar sedang diunduh.
        placeholder: (context, url) => Container(
          width: 120,
          height: 120,
          color: Colors.deepPurple[50],
          child: const Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        ),
        // Fallback jika gambar gagal dimuat (misal offline atau URL bermasalah).
        errorWidget: (context, url, error) => Container(
          width: 120,
          height: 120,
          color: Colors.deepPurple[50],
          child: const Icon(Icons.broken_image, color: Colors.deepPurple),
        ),
      );
    } else {
      // Menampilkan gambar dari aset lokal.
      return Image.asset(
        path,
        width: 120,
        height: 120,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: 120,
          height: 120,
          color: Colors.deepPurple[50],
          child: const Icon(Icons.broken_image, color: Colors.deepPurple),
        ),
      );
    }
  }

  // Fungsi untuk menampilkan pop-up pembesar gambar saat foto galeri diketuk.
  void _showEnlargedImage(BuildContext context, String path) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(16),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: path.startsWith('http')
                  ? CachedNetworkImage(
                      imageUrl: path,
                      fit: BoxFit.contain,
                      placeholder: (context, _) => Container(
                        color: Colors.black26,
                        height: 200,
                        child: const Center(child: CircularProgressIndicator()),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.black54,
                        padding: const EdgeInsets.all(32),
                        child: const Icon(Icons.broken_image, color: Colors.white, size: 48),
                      ),
                    )
                  : Image.asset(
                      path,
                      fit: BoxFit.contain,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                  // Judul galeri beserta jumlah foto yang tersedia.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Galeri', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                        '${candi.imageUrls.length} Foto',
                        style: TextStyle(fontSize: 12, color: Colors.deepPurple.shade400, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // ListView horizontal dengan tinggi proporsional.
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      // Menggeser galeri ke samping.
                      scrollDirection: Axis.horizontal,
                      // Jumlah item mengikuti seluruh jumlah foto di imageUrls.
                      itemCount: candi.imageUrls.length,
                      // Membuat widget untuk tiap foto.
                      itemBuilder: (context, index) {
                        final imagePath = candi.imageUrls[index];
                        return Padding(
                          // Memberi jarak di sisi kanan tiap foto.
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            // Membuka pratinjau gambar saat foto diketuk.
                            onTap: () => _showEnlargedImage(context, imagePath),
                            child: Container(
                              // Bingkai foto galeri.
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.deepPurple.shade100, width: 2),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: _buildGalleryItem(imagePath),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 6),
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
