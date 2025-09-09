import 'package:flutter/material.dart';
import '../models/film.dart';

class FilmItem extends StatelessWidget {
  final Film film;
  final VoidCallback onTap;

  const FilmItem({Key? key, required this.film, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child : ListTile(
        onTap:onTap,
        leading : SizedBox(
          width: 50,
          child: Image.asset(film.poster, fit: BoxFit.cover),
        ),
        title: Text(film.title),
        subtitle: Text('${film.year} • ${film.genre}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}