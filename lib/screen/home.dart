import 'package:flutter/material.dart';
import '../models/film.dart';
import '../widget/film_item.dart';
import '../screen/detail_screen_aplikasi.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Film> films = [
      Film(
        title: "Pengabdi Setan",
        year: 2017,
        genre: "Horror",
        sinopsis:
            "Film horor tentang keluarga yang diganggu arwah ibunya setelah kematian sang ibu.",
        posterAsset: 'assets/images/pengabdisetansatu.jpg',
      ),
      Film(
        title: "Pengabdi Setan 2",
        year: 2022,
        genre: "Horror",
        sinopsis:
            "Sekuel dari film pertama, melanjutkan kisah teror setelah keluarga pindah ke rumah susun.",
        posterAsset: 'assets/images/pengabdisetandua.jpg',
      ),
      Film(
        title: "Pengepungan di Bukit Duri",
        year: 2023,
        genre: "Drama",
        sinopsis:
            "Film drama sejarah yang menggambarkan perjuangan rakyat dalam mempertahankan kemerdekaan.",
        posterAsset: "assets/images/pengepunganbukit.jpg",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Film Favorit"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // jumlah kolom
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.65,
          ),
          itemCount: films.length,
          itemBuilder: (context, index) {
            final film = films[index];
            return FilmItem(
              film: film,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(film: film),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
