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
        sinopsis:"Film horor tentang keluarga yang diganggu arwah ibunya setelah kematian sang ibu.",
        posterAsset: 'assets/images/pengabdisetansatu.jpg',
      ),
      Film(
        title: "Pengabdi Setan 2",
        year: 2022,
        genre: "Horror",
        sinopsis:"Sekuel dari film pertama, melanjutkan kisah teror setelah keluarga pindah ke rumah susun.",
        posterAsset: 'assets/images/pengabdisetandua.jpg',
      ),
      Film(
        title: "Pengepungan di Bukit Duri",
        year: 2023,
        genre: "Drama",
        sinopsis:"Film drama sejarah yang menggambarkan perjuangan rakyat dalam mempertahankan kemerdekaan.",
        posterAsset: "assets/images/pengepunganbukit.jpg",
      ),
      Film(
        title: "Siksa Kubur",
        year: 2025,
        genre: "Horror",
        sinopsis: "Film horor tentang keluarga yang diganggu arwah ibunya setelah kematian sang ibu.",
        posterAsset: 'assets/images/siksakubur.jpg',
      ),
      Film(
        title: "1 Kakak 7 Ponakan",
        year: 2025,
        genre: "Drama",
        sinopsis:
            "Film drama sejarah yang menggambarkan perjuangan rakyat dalam mempertahankan kemerdekaan.",
        posterAsset: "assets/images/sakatupo.jpg",
      ),
      Film(
        title: "Respati",
        year: 2024,
        genre: "Drama",
        sinopsis:
            "Film drama yang mengisahkan perjuangan seorang wanita dalam menghadapi tantangan hidup.",
        posterAsset: "assets/images/respati.jpg",
      ),
      Film(
        title: "The Conjuring",
        year: 2013,
        genre: "Horror",
        sinopsis:
            "Film horor berdasarkan kisah nyata tentang pasangan suami istri yang menyelidiki kejadian supranatural.",
        posterAsset: "assets/images/theconjuring.jpg",
      ),
      Film(
        title: "Final Destination",
        year: 2000,
        genre: "Horror",
        sinopsis:
            "Film horor tentang sekelompok remaja yang selamat dari kecelakaan pesawat, namun kematian mengejar mereka satu per satu.",
        posterAsset: "assets/images/finaldestination.jpg",
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
