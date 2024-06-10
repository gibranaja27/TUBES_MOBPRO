import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us',
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
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Hubungi Kami',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontFamily: AutofillHints.jobTitle,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Jika Anda Memiliki Pertanyaan Atau Masalah  Terkait Layanan Kami Silahkan Hubungi Kami.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.purple),
                    SizedBox(width: 8),
                    Text('travelkuy@gmail.com'),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.purple.withOpacity(0.1),
                ),
                padding: EdgeInsets.all(16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.purple),
                    SizedBox(width: 8),
                    Text('087875569311'),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.purple.withOpacity(0.1),
                ),
                padding: EdgeInsets.all(16),
              ),
            ),
            Divider(),
            Center(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.purple),
                    SizedBox(width: 8),
                    Text(
                      'Jl. Telekomunikasi. 1, Terusan Buahbatu - Bojongsoang, Sukapura, Kec. Dayeuhkolot, Kabupaten Bandung, Jawa Barat 40257',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
