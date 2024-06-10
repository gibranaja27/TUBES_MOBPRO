import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkout.dart';


class Content1 extends StatelessWidget {
  const Content1({super.key});
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
        title: Text('Bali'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset(
                'lib/images/Bali.jpg', // Ganti dengan URL gambar yang sesuai
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
                    'Bali',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Indonesia, Bali'),
                      Spacer(),
                      Text('Rp.8.000.000'),
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
                    'Pantai Nusa Dua dan Waterblow, Pura Luhur Uluwatu, Nyaman Gallery, Pura Petitenget, Pantai Seminyak, Pasar Malam Seminyak, Berbelanja di Ubud.',
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
                    'Bali telah menjadi salah satu destinasi pulau terbaik di dunia selama beberapa dekade dan mudah untuk melihat alasannya. Dari pantai pasir putih hingga kehidupan malam yang berkembang, surga tropis ini memiliki sesuatu untuk setiap jenis pelancong.',
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

