import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/editdestinasiimpian.dart';
import 'package:flutter_application_1/tambahdestinasiimpian.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:http/http.dart' as http;

class DestinasiImpian extends StatefulWidget {
  DestinasiImpian({Key? key}) : super(key: key);

  @override
  State<DestinasiImpian> createState() => _DestinasiImpian();
}

class _DestinasiImpian extends State<DestinasiImpian> {
  List _listdata = [];
  bool _isloading = true;

  Future _getdata() async {
    try {
      final respone = await http.get(
          Uri.parse("http://192.168.221.236/flutterapi/crudtravelkuy/read.php"));
      if (respone.statusCode == 200) {
        print(respone.body);
        final data = jsonDecode(respone.body);
        setState(() {
          _listdata = data;
          _isloading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future _delete(String id) async {
    try {
      final respone = await http.post(
          Uri.parse("http://192.168.221.236/flutterapi/crudtravelkuy/delete.php"),
          body: {
            "tempat_destinasi": id,
          });
      if (respone.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getdata();
    print(_listdata);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destinasi Impian",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple,
      ),
      body: _isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _listdata.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditDestinasiImpian(
                                    ListData: {
                                      "id": _listdata[index]["id"],
                                      "tempat_destinasi": _listdata[index]
                                          ["tempat_destinasi"],
                                      "budget": _listdata[index]["budget"],
                                      "tanggal_mulai": _listdata[index]
                                          ["tanggal_mulai"],
                                      "catatan_tambahan": _listdata[index]
                                          ["catatan_tambahan"],
                                    },
                                  )));
                    },
                    child: ListTile(
                      title: Text(_listdata[index]["tempat_destinasi"]),
                      subtitle: Text(_listdata[index]["tanggal_mulai"]),
                      trailing: IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return AlertDialog(
                                    content: Text(
                                        "Apakah Yakin Anda Ingin Mengkapus"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            _delete(_listdata[index]
                                                    ["tempat_destinasi"])
                                                .then((value) {
                                              if (value) {
                                                final snackBar = SnackBar(
                                                  content: const Text(
                                                      'Data Berhasil Dihapus :)'),
                                                );
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(snackBar);
                                              } else {
                                                final snackBar = SnackBar(
                                                  content: const Text(
                                                      'Data Gagal Dihapus :('),
                                                );
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(snackBar);
                                              }
                                            });
                                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:((context) => HomePage())), (route) => false);;
                                          },
                                          child: Text("Ya")),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Batal"))
                                    ],
                                  );
                                }));
                          },
                          icon: Icon(Icons.delete)),
                    ),
                  ),
                );
              }),
            ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.playlist_add_rounded),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TambahDestinasiImpian()));
          }),
    );
  }
}
