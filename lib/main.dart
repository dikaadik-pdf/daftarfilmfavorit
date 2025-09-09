import 'package:flutter/material.dart';
import 'screen/home.dart';  // pastikan path sesuai struktur foldermu

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Film Favorit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),  // halaman utama aplikasi
      debugShowCheckedModeBanner: false,
    );
  }
}