// Model data yang menjadi cetakan informasi setiap candi.
class Candi {
  // Nama candi.
  final String name;
  // Lokasi candi.
  final String location;
  // Deskripsi candi.
  final String description;
  // Tahun atau periode pembangunan.
  final String built;
  // Jenis candi.
  final String type;
  // Path gambar utama lokal.
  final String imageAsset;
  // Daftar URL foto galeri dari internet.
  final List<String> imageUrls;
  // Status favorit dapat berubah saat tombol ditekan.
  bool isFavorite;

  // Constructor: semua data wajib diisi kecuali status favorit.
  Candi({
    required this.name,
    required this.location,
    required this.description,
    required this.built,
    required this.type,
    required this.imageAsset,
    required this.imageUrls,
    this.isFavorite = false,
  });
}
