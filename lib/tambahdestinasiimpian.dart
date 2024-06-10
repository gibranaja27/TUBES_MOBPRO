import 'package:flutter/material.dart';
import 'package:flutter_application_1/destinasiimpian.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:http/http.dart' as http;

class TambahDestinasiImpian extends StatefulWidget {
  TambahDestinasiImpian({Key? key}) : super(key: key);

  @override
  State<TambahDestinasiImpian> createState() => _TambahDestinasiImpianState();
}

class _TambahDestinasiImpianState extends State<TambahDestinasiImpian> {
  final formkey = GlobalKey<FormState>();

  TextEditingController tempat_destinasi = TextEditingController();
  TextEditingController budget = TextEditingController();
  TextEditingController tanggal_mulai = TextEditingController();
  TextEditingController catatan_tambahan = TextEditingController();
  Future _simpan() async {
    final respone = await http.post(
        Uri.parse("http://192.168.221.236/flutterapi/crudtravelkuy/create.php"),
        body: {
          "tempat_destinasi": tempat_destinasi.text,
          "budget": budget.text,
          "tanggal_mulai": tanggal_mulai.text,
          "catatan_tambahan": catatan_tambahan.text,
        });
    if (respone.statusCode == 200) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Destinasi Impian",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple,
      ),
      body: Form(
          key: formkey,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: tempat_destinasi,
                  decoration: InputDecoration(
                      hintText: "Tempat Destinasi",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tempat Destinasi Tidak Boleh Kosong";
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: budget,
                  decoration: InputDecoration(
                      hintText: "Budget",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Budget Tidak Boleh Kosong";
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: tanggal_mulai,
                  decoration: InputDecoration(
                      hintText: "Tanggal Mulai",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tanggal Mulai Tidak Boleh Kosong";
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: catatan_tambahan,
                  decoration: InputDecoration(
                      hintText: "Catatan Tambahan",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Catatan Tambahan Tidak Boleh Kosong";
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        _simpan().then((value) {
                          if (value) {
                            final snackBar = SnackBar(
                              content: const Text('Data Berhasil Disimpan :)'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            final snackBar = SnackBar(
                              content: const Text('Data Gagal Disimpan :('),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:((context) => HomePage())), (route) => false);
                      }
                    },
                    child: Text("Simpan"))
              ],
            ),
          )),
    );
  }
}
