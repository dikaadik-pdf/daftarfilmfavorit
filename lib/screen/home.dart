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
        title: "Sore : Istri Dari Masa Depan",
        year: 2025,
        genre: "Drama, Fantasi, Romansa",
        sinopsis:
            "Seorang perempuan bernama Sore datang dari masa depan untuk mengubah kebiasaan dan gaya hidup Jonathan, suaminya, yang tidak sehat dan berantakan demi menyelamatkannya dari takdir buruk. Kehadiran Sore dengan penuh kasih dan perhatian perlahan membuka hati Jonathan, namun ia juga harus menghadapi rahasia besar dan pilihan sulit terkait masa depan hubungan mereka.",
        posterAsset: 'assets/images/sore.jpg',
      ),
      Film(
        title: "Pengabdi Setan 2 : Communion",
        year: 2022,
        genre: "Horror, Thriller, Mystery",
        sinopsis:
            "Beberapa tahun setelah berhasil menyelamatkan diri dari kejadian mengerikan yang membuat mereka kehilangan ibu dan si bungsu Ian, Rini dan adik-adiknya, Toni dan Bondi, serta Bapak tinggal di rumah susun karena percaya tinggal di rumah susun aman jika terjadi sesuatu karena ada banyak orang.",
        posterAsset: 'assets/images/pengabdisetandua.jpg',
      ),
      Film(
        title: "Pengepungan di Bukit Duri",
        year: 2025,
        genre: "Thriller, Action, Drama, Psikikologis",
        sinopsis:
            "Edwin bekerja sebagai guru pengganti di SMA Duri, sekolah khusus anak-anak bermasalah. Di tengah Indonesia yang bergejolak dan memanas, situasi pun menjadi rumit ketika ia terjebak di antara pertarungan hidup dan mati.",
        posterAsset: "assets/images/pengepunganbukit.jpg",
      ),
      Film(
        title: "Jumbo",
        year: 2025,
        genre: "Fantasi",
        sinopsis:
            "Don (Prince Poetiray), anak gemuk yang sering diolok-olok dengan panggilan Jumbo ingin membalas perbuatan anak yang suka merundungnya, tapi sesosok arwah bernama Meri (Quinn Salman) meminta pertolongan Don untuk disatukan kembali dengan makam keluarganya yang dirusak.",
        posterAsset: 'assets/images/jumbo.jpg',
      ),
      Film(
        title: "1 Kakak 7 Ponakan",
        year: 2025,
        genre: "Drama, Keluarga",
        sinopsis:
            "Setelah kakak-kakaknya meninggal dunia mendadak, Hendarmoko, arsitek muda, tiba-tiba menjadi orangtua tunggal bagi para keponakannya. Ketika kesempatan yang lebih baik muncul, ia harus memilih antara cinta, karier, atau keponakan-keponakannya..",
        posterAsset: "assets/images/sakatupo.jpg",
      ),
      Film(
        title: "Respati",
        year: 2024,
        genre: "Horror, Thriller, Misteri, Fantasi",
        sinopsis:
            "Dengan kemampuan spesial yang tiba-tiba ia dapatkan setelah orangtuanya meninggal dunia, Respati berusaha mengungkap misteri di alam mimpi yang menyebabkan sejumlah individu di dunia nyata tewas secara mengenaskan.",
        posterAsset: "assets/images/respati.jpg",
      ),
      Film(
        title: "The Conjuring : Last Rites",
        year: 2025,
        genre: "Horror",
        sinopsis:
            "Penyelidik paranormal Ed dan Lorraine Warren menangani satu kasus mengerikan terakhir yang melibatkan entitas misterius yang harus mereka hadapi.",
        posterAsset: "assets/images/theconjuring.jpg",
      ),
      Film(
        title: "Final Destination : Bloodlines",
        year: 2025,
        genre: "Horror, Mystery, Psikologis",
        sinopsis:
            "Kematian adalah hal yang sudah biasa dalam keluarga. Diganggu oleh mimpi buruk yang terus-menerus dan penuh kekerasan, mahasiswi Stefanie pulang ke rumah untuk mencari satu orang yang mungkin dapat memutus siklus itu dan menyelamatkan keluarganya dari kematian mengerikan yang pasti menanti mereka semua.",
        posterAsset: "assets/images/finaldestination.jpg",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Film Trending Favorit',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Scrollbar(
          thumbVisibility: true, // biar scrollbar selalu kelihatan
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
      ),
    );
  }
}
