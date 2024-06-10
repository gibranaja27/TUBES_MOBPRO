import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Packet Travel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pakettravel(),
    );
  }
}

class Pakettravel extends StatelessWidget {
  // Replace with your actual data structure for shopping cart items
  final List<Map<String, dynamic>> cartItems = [
    {
      'title': 'Bali',
      'price': 8000000,
      'quantity': 1,
      'image':
          'https://ak-d.tripcdn.com/images/1mi2h12000avxr7y01203_W_640_0_R5_Q80.jpg?proc=source/trip'
    },
    {
      'title': 'Bromo',
      'price': 5000000,
      'quantity': 1,
      'image':
          'https://asset.kompas.com/crops/6vjzgChZBTAAhwLJE3gDJ9j3pV0=/0x0:750x500/750x500/data/photo/2023/05/09/645a0567b9afc.jpeg'
    },
  ];

  Pakettravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Packet Travel'),
        backgroundColor: Colors.purple,
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Text('Keranjang kosong!'),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return PakettravelItem(item: item);
              },
            ),
      bottomNavigationBar: cartItems.isEmpty
          ? null
          : Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Perhitungan harga total
                  Text(
                    'Total: Rp ${(cartItems.fold(0.0, (sum, item) => sum + item['price'] * item['quantity'])).toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan dialog konfirmasi
                      // membuat sebuah dialog modal dengan pesan konten dan dua tombol aksi, yaitu "Batal" dan "Lanjut", yang memberikan pengguna pilihan untuk melanjutkan atau membatalkan suatu tindakan
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: const Text(
                              'Tiket anda akan kami kirim melalui email anda'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Batal'),
                              child: const Text('Batal'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Tambahkan fungsi tombol di sini
                                  // Kode ini menambahkan sebuah SnackBar ke dalam aplikasi Flutter Anda. SnackBar adalah pesan singkat yang muncul di bagian bawah layar.
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                ),
                                child: const Text(
                                  'Bayar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 211, 0, 249)),
                      foregroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 255, 255)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 18)),
                    ),
                    child: const Text('Bayar'),
                  ),
                ],
              ),
            ),
    );
  }
}

class PakettravelItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const PakettravelItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title'],
                  style: const TextStyle(fontSize: 16.0),
                ),
                Text(
                  '${'Rp ' + item['price'].toStringAsFixed(2)} per item',
                  style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      'Jumlah: ${item['quantity']}',
                      style: const TextStyle(fontSize: 14.0),
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
