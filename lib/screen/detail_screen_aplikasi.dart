import 'package:flutter/material.dart';
import '../models/film.dart';

class MovieDetailPage extends StatelessWidget {
  final Film film;

  const MovieDetailPage({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // latar belakang gelap
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight, // biar bisa center
                ),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 30), // jarak atas & bawah
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Judul Film
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF000000),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: double.infinity,
                          child: Text(
                            film.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: 'Monsserat',
                              color: Color.fromARGB(221, 255, 255, 255),
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Poster Film
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => Dialog(
                                backgroundColor: Colors.transparent,
                                insetPadding: const EdgeInsets.all(10),
                                child: InteractiveViewer(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      film.posterAsset,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              film.posterAsset,
                              height: 280,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Tahun + Genre
                        Text(
                          "${film.year} · ${film.genre}",
                          style: TextStyle(color: Colors.grey[700], fontSize: 14),
                        ),

                        const SizedBox(height: 20),

                        // Sinopsis
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sinopsis',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: const Color.fromARGB(255, 56, 56, 56),
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            film.sinopsis,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Tombol
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Kembali',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 255, 0, 0)),
                              label: const Text('Simpan ke Favorit'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "Film Kamu berhasil disimpan ke Favorit ❤️",
                                    ),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.black87,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}