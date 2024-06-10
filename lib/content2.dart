import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkout.dart';


class Content2 extends StatelessWidget {
  const Content2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Bromo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset(
                'lib/images/bromo.jpg', // Ganti dengan URL gambar yang sesuai
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bromo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Indonesia, Bromo'),
                      Spacer(),
                      Text('Rp.4.000.000'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text('(4.8)'),
                    ],
                  ),
                ],
              ),
            ),
            // Bagian untuk memilih jumlah orang
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Orang',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('1'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('2'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('3'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('4'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('5'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Bagian deskripsi itinerary
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi Itinerary',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sunrise point, Bukit Widodaren, Pura Luhur Poten, Bukit Teletubis, Savana Bromo, Pasir Berbisik, Kawah Bromo',
                  ),
                ],
              ),
            ),
            // Bagian deskripsi umum Bali
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Bromo Murah adalah paket wisata Bromo yang memberikan kesempatan untuk wisatawan menikmati keindahan wisata di kawasan Gunung Bromo dalam waktu satu hari. Paket private menjadi pilihan yang tepat bagi kamu yang menginginkan wisata berkesan dengan orang-orang tersayang. ',
                  ),
                ],
              ),
            ),
            // Tombol untuk memesan trip
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormPesan()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text('Pesan Trip Sekarang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

