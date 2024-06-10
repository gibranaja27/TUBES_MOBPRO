import 'package:flutter/material.dart';
import 'package:flutter_application_1/contactus.dart';
import 'package:flutter_application_1/gallery.dart';
import 'package:flutter_application_1/pakettravel.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/TravelKuy.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 16.0),
            Text(
              'Company Profile',
              style: TextStyle(
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(height: 8.0),
            Center(
              child: Text(
                  'TravelKuy merupakan perusahaan Biro Perjalanan Wisata yang berdiri sejak tahun 2025. Sesuai dengan bidangnya, TravelKuy menawarkan solusi perjalanan yang lengkap untuk liburan dan perjalanan bisnis baik Domestik maupun Internasional, yang di sesuaikan dengan kebutuhan Perusahaan tertentu atau permintaan Kelompok dan Personal. Dalam membina relasi dengan pelanggan, TravelKuy mengembangkan sistem pro-aktif, dengan tujuan dapat memberikan kenyamanan lebih kepada pelanggan. Oleh karena itu TravelKuy selalu berinovasi untuk mengembangkan sumber daya manusia dan teknologi yang memudahkan pelanggan. TravelKuy menyediakan layanan 24-jam kepada pelanggan untuk mendapatkan informasi cepat dan akurat.',
                  textAlign: TextAlign.justify),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi tombol di sini
                  // Kode ini menambahkan sebuah SnackBar ke dalam aplikasi Flutter Anda. SnackBar adalah pesan singkat yang muncul di bagian bawah layar.
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                child: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
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
