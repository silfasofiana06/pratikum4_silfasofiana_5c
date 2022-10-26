class Kopi{
  final String id;
  final String nama;
  final String harga;
  final String rating;
  final String deskripsi;
  final String gambar;

  Kopi({required this.id, required this.nama, required this.harga, required this.rating, required this.deskripsi, required this.gambar});
}

List<Kopi> listKopi = [
  Kopi(id: '1', nama: 'Kopi Hitam', harga: 'Rp. 10.000', rating: '8.2', deskripsi: 'Kopi hitam tanpa campuran gula, hitamnya murni seperti malika', gambar: 'assets/kopi1.jpg'),
  Kopi(id: '2', nama: 'Kopi ABC Mocca', harga: 'Rp. 12.000', rating: '7.3', deskripsi: 'Kopinya anak muda', gambar: 'assets/kopi2.jpg'),
  Kopi(id: '3', nama: 'Kopi Torabika', harga: 'Rp. 17.000', rating: '7.8', deskripsi: 'Kopi yang diambil dari biji kopi pilihan dan jarang ditemukan di Indonesia', gambar: 'assets/kopi3.jpg'),
  Kopi(id: '4', nama: 'Kopi Cappucino', harga: 'Rp. 15.000', rating: '7.2', deskripsi: 'Kopi Capuccino tapi gapake cincau', gambar: 'assets/kopi4.jpg'),
];

