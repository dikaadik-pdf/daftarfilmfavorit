import 'package:flutter/material.dart';
import '../models/film.dart';
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
            "Sore, seorang wanita misterius, datang dari masa depan ke masa lalu dengan satu misi - mengubah takdir hidup Jonathan, suaminya. Namun, segalanya menjadi rumit karena masa lalu, masa kini, dan masa depan Jonathan bersama Sore menjadi berbenturan.",
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
            "Alkisah pada tahun 2027, Edwin bekerja sebagai guru pengganti di SMA Duri, sekolah khusus anak-anak bermasalah. Di tengah Indonesia yang bergejolak dan memanas, situasi pun menjadi rumit ketika ia terjebak di antara pertarungan hidup dan mati.",
        posterAsset: "assets/images/pengepunganbukit.jpg",
      ),
      Film(
        title: "Jumbo",
        year: 2025,
        genre: "Fantasi",
        sinopsis:
            "Don (Prince Poetiray), anak gemuk yang sering diolok-olok dengan panggilan -Jumbo- ingin membalas perbuatan anak yang suka merundungnya, tapi sesosok arwah bernama Meri (Quinn Salman) meminta pertolongan Don untuk disatukan kembali dengan makam keluarganya yang dirusak.",
        posterAsset: 'assets/images/jumbo.jpg',
      ),
      Film(
        title: "1 Kakak 7 Ponakan",
        year: 2025,
        genre: "Drama, Keluarga",
        sinopsis:
            "Setelah kakak-kakaknya meninggal dunia mendadak, Hendarmoko, arsitek muda, tiba-tiba menjadi orangtua tunggal bagi para keponakannya. Ketika kesempatan yang lebih baik muncul, ia harus memilih antara cinta, karier, atau keponakan-keponakannya.",
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
            "Kasus yang mengakhiri semuanya. Penyelidik paranormal Ed dan Lorraine Warren menangani satu kasus mengerikan terakhir yang melibatkan entitas misterius yang harus mereka hadapi..",
        posterAsset: "assets/images/theconjuring.jpg",
      ),
      Film(
        title: "Final Destination : Bloodlines",
        year: 2025,
        genre: "Horror, Mystery, Psikologis",
        sinopsis:
            "Kematian adalah hal yang sudah biasa dalam keluarga. Diganggu oleh mimpi buruk yang terus-menerus dan penuh kekerasan, mahasiswi Stefanie pulang ke rumah untuk mencari satu orang yang mungkin dapat memutus siklus itu dan menyelamatkan keluarganya dari kematian mengerikan yang pasti menanti mereka semua..",
        posterAsset: "assets/images/finaldestination.jpg",
      ),
      Film(
        title: "Demon Slayer : Kimetsu no Yaiba - Infinity Castle",
        year: 2025,
        genre: "Action, Petualangan, Fantasi",
        sinopsis: "SKorps Pembasmi Iblis ditarik ke dalam Kastil Infinity, tempat Tanjiro, Nezuko, dan Hashira menghadapi iblis Tingkat Atas yang mengerikan dalam pertarungan putus asa saat pertempuran terakhir melawan Muzan Kibutsuji dimulai. Namun, bahaya baru mengintai di depan mata.",
        posterAsset: 'assets/images/demon.jpg',
      ),
      Film(
        title: "Panji Tengkorak",
        year: 2025,
        genre: "Action, Drama, Sejarah, Thriller",
        sinopsis:"Panji hidup berkelana tanpa tujuan setelah menjual jiwanya pada ilmu hitam demi membalaskan kematian istrinya. Kala seorang pendekar tua meminta bantuannya untuk merebut kembali sebuah pusaka sakti dari tangan bandit - gayung pun bersambut..",
        posterAsset: 'assets/images/panji.jpg',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF2E2E2E),
      body: Column(
        children: [
          // 🔹 AppBar + Header custom
          Column(
            children: [
              // 🔹 AppBar custom
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                decoration: const BoxDecoration(
                  color: Colors.black, // background hitam
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20), // 🔹 lengkungan bawah AppBar
                  ),
                ),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "ErpeelCineflix",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(209, 22, 9, 1),
                  ),
                ),
              ),

              const SizedBox(height: 18), // 🔹 jarak biar ga mepet
              // 🔹 Container bawah
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 28),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // 🔹 semua rata tengah
                  children: const [
                    Text(
                      "Selamat Datang di ErpeelCineflix",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center, // biar aman kalau panjang
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Film Terfavorit dan trending saat ini, manakah film favoritmu?",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                      textAlign:
                          TextAlign.center, // 🔹 teks deskripsi juga tengah
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
          // 🔹 Grid film
          Expanded(
            child: SafeArea(
              top: false, // biar AppBar ga ke-push ke bawah
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.68,
                  ),
                  itemCount: films.length,
                  itemBuilder: (context, index) {
                    final film = films[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailPage(film: film),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.12),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  film.posterAsset,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey[300],
                                      child: const Center(
                                        child: Icon(Icons.broken_image),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    10,
                                    12,
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.65),
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        film.title,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        film.genre,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.9),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
