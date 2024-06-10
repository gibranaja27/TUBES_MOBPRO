import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutus.dart';
import 'package:flutter_application_1/gallery.dart';
import 'package:flutter_application_1/content1.dart'; // Added this line to import content1.dart
import 'package:flutter_application_1/content2.dart';
import 'package:flutter_application_1/pakettravel.dart';
import 'package:flutter_application_1/destinasiimpian.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom App Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'TravelKuy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Welcome To, Travelkuy!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: const Color.fromARGB(255, 226, 33, 243),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rekomendasi Untuk Anda',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'lib/images/Bali.jpg', // Ganti dengan URL gambar yang sesuai
                          fit: BoxFit.cover,
                        ),
                        ListTile(
                          title: Text('BALI'),
                          subtitle: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 16),
                              SizedBox(width: 4),
                              Text('4.8'),
                              SizedBox(width: 10),
                              Icon(Icons.attach_money, size: 16),
                              SizedBox(width: 4),
                              Text('8.000.000'),
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_right_alt_rounded,
                                color: Colors.blue),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Content1())); // Aksi ketika tombol ditekan
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'lib/images/bromo.jpg', // Ganti dengan URL gambar yang sesuai
                          fit: BoxFit.cover,
                        ),
                        ListTile(
                          title: Text('BROMO'),
                          subtitle: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 16),
                              SizedBox(width: 4),
                              Text('4.9'),
                              SizedBox(width: 10),
                              Icon(Icons.attach_money, size: 16),
                              SizedBox(width: 4),
                              Text('4.000.000'),
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_right_alt_rounded,
                                color: Colors.blue),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Content2())); // Aksi ketika tombol ditekan
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destinasi Impian",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                  // Tambahkan fungsi tombol di sini
                  // Kode ini menambahkan sebuah SnackBar ke dalam aplikasi Flutter Anda. SnackBar adalah pesan singkat yang muncul di bagian bawah layar.
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DestinasiImpian()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                child: const Text(
                  'Destinasi Impian',
                  style: TextStyle(color: Colors.white),
                ),
                          )                       ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple, // Warna latar belakang bottom app bar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                semanticLabel: 'Home',
                color: Colors.white,
              ), // Warna ikon putih
              onPressed: () {
                // Navigasi ke halaman Home
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
            ),
            IconButton(
              icon:
                  Icon(Icons.business, color: Colors.white), // Warna ikon putih
              onPressed: () {
                // Navigasi ke halaman Search
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.collections,
                  color: Colors.white), // Warna ikon putih
              onPressed: () {
                // Navigasi ke halaman Profile
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.flight, color: Colors.white), // Warna ikon putih
              onPressed: () {
                // Navigasi ke halaman Profile
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pakettravel()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
