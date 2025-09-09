import 'package:flutter/material.dart';
import '../models/film.dart';
import '../screen/detail_screen_aplikasi.dart';
import '../widget/film_item.dart';

class HomeScreen extends StatelessWidget {
  final List<Film> films = [
    Film(
      title: 'Pengabdi Setan 1',
      year: 2017,
      genre: 'Horror, Thriller',
      sipnosis:'Rini dan adik-adiknya yang diteror hantu ibu mereka setelah sang ibu meninggal, yang ternyata berawal dari perjanjian hitam masa lalu keluarga tersebut dengan sekte pemuja setan untuk mendapatkan anak.',
      poster: 'assets/images/pengabdisetansatu.jpg',
    ),
    Film(
      title: 'Pengabdi Setan 2',
      year: 2017,
      genre: 'Horror, Thriller',
      sipnosis:'Beberapa tahun setelah berhasil menyelamatkan diri dari kejadian mengerikan yang membuat mereka kehilangan ibu dan si bungsu Ian, Rini dan adik-adiknya, Toni dan Bondi, serta Bapak tinggal di rumah susun karena percaya tinggal di rumah susun aman jika terjadi sesuatu karena ada banyak orang.',
      poster: 'assets/images/pengabdisetandua.jpg',
    ),
    Film(
      title: 'Siksa Kubur',
      year: 2024,
      genre: 'Horror, Thriller, Mystery',
      sipnosis:'Setelah orangtuanya tewas menjadi korban bom bunuh diri, Sita tak percaya pada agama. Ia bertekad mencari orang yang paling berdosa dan ketika orang itu meninggal, ia ingin ikut masuk ke dalam kuburannya, untuk membuktikan mitos tentang siksa kubur..',
      poster: 'assets/images/siksakubur.jpg',
    ),
    Film(
      title: 'Pengepungan Di Bukit Duri',
      year: 2025,
      genre: 'Thriller',
      sipnosis: 'Edwin bekerja sebagai guru pengganti di SMA Duri, sekolah khusus anak-anak bermasalah. Di tengah Indonesia yang bergejolak dan memanas, situasi pun menjadi rumit ketika ia terjebak di antara pertarungan hidup dan mati.',
      poster: 'assets/images/pengepunganbukit.jpg',
    ),
    Film(
      title: '1 Kakak 7 Ponakan',
      year: 2025,
      genre: 'Drama',
      sipnosis:'Setelah kakak-kakaknya meninggal dunia mendadak, Hendarmoko, arsitek muda, tiba-tiba menjadi orangtua tunggal bagi para keponakannya. Ketika kesempatan yang lebih baik muncul, ia harus memilih antara cinta, karier, atau keponakan-keponakannya.',
      poster: 'assets/images/sakatupo.jpg',
    ),
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Film Favorit')),
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          final film = films[index];
          return FilmItem(
            film: film,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(film: film),
                ),
              );
            },
          );
        },
      ),
    );
  }
}