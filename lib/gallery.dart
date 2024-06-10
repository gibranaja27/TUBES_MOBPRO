import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutus.dart';
import 'package:flutter_application_1/pakettravel.dart';
import 'package:flutter_application_1/homepage.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            Text(
              "Diamond Beach",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/diamondbeach.png"),
            ),
            Text(
              '   Apa yang membuat Pantai Diamond semakin spektakuler, dan alasan utama mengapa disebut Pantai Diamond, adalah karena di sana tersebar ratusan bongkahan es yang berkilau dan bersinar seperti berlian di bawah sinar matahari. ',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            SizedBox(height: 20.0),
            Text(
              "Uluwatu Temple",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/uluwatu.png"),
            ),
            Text(
              '   Pura yang terletak di ujung barat daya pulau Bali di atas anjungan batu karang yang terjal dan tinggi serta menjorok ke laut ini merupakan Pura Sad Kayangan yang dipercaya oleh orang Hindu sebagai penyangga dari 9 mata angin.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            SizedBox(height: 20.0),
            Text(
              "Pink Beach",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/pinkbeach.png"),
            ),
            Text(
              '   Pink Beach adalah salah satu pantai eksotis yang memiliki pemandangan indah dengan pasir pantai berwarna merah muda atau pink. Pantai ini juga dikenal dengan nama Pantai Merah di Pulau Komodo.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            SizedBox(height: 20.0),
            Text(
              "Gili Trawangan",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/giliterawangan.png"),
            ),
            Text(
              '   Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terletak di sebelah barat laut Lombok. Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan. Dengan panjang 3 km dan lebar 2 km, Gili Trawangan berpopulasi sekitar 2.089 jiwa dengan rasio laki-laki dan perempuan',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            SizedBox(height: 20.0),
            Text(
              "GWK Cultural Park",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/gwkculturalpark.png"),
            ),
            Text(
              '   Taman Budaya Garuda Wisnu Kencana (GWK) merupakan objek wisata sekaligus ikon Pulau Bali. Salah satu alasan mengapa Taman Budaya GWK ini sangat ikonik adalah Patung GWK karya seniman ternama asal Bali, Nyoman Nuarta. Patung tertinggi keempat di dunia ini menjulang setinggi 120.9 meter dan memiliki lebar 64 meter.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            SizedBox(height: 20.0),
            Text(
              "Gunung Bromo",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/gunungbromo.png"),
            ),
            Text(
              '   Wisata Gunung Bromo adalah salah satu tempat wisata di indonesia yang menjadi favorit bagi wisatawan baik dalam negeri maupun luar negeri. Gunung Bromo terletak di Kabupaten Probolinggo. Gunung Bromo memiliki ketinggian sekitar 2392 mdpl. Memiliki kawah yang menjadi objek utama yang sering dikunjungi oleh wisatawan asing maupun lokal.',
              textAlign: TextAlign.justify,
            ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
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
