import 'package:flutter/material.dart';
import '../models/film.dart';

class DetailScreen extends StatelessWidget {
  final Film film;

  const DetailScreen({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              film.poster,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              film.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '${film.year} • ${film.genre}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              film.sipnosis,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}