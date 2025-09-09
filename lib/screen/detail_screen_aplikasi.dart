import 'package:flutter/material.dart';
import '../models/film.dart';

class DetailPage extends StatelessWidget {
  final Film film;

  const DetailPage({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.title),
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // ubah angka biar lebih melengkung
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Poster film
            Center(
              child: SizedBox(
                width: 200,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(film.posterAsset, fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Tahun dan genre
            Text(
              '${film.year} • ${film.genre}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),

            // Sinopsis
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sinopsis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                film.sinopsis,
                style: const TextStyle(fontSize: 15, height: 1.5),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol aksi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol kembali
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: const Text("Kembali"),
                ),

                const SizedBox(width: 16), // jarak antar tombol
                // Tombol favorit
                ElevatedButton(
                  onPressed: () {
                    // TODO: simpan ke favorit
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Ditambahkan ke favorit!")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.favorite),
                      SizedBox(width: 6),
                      Text("Simpan ke Favorit"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
