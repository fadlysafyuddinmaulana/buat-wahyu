import 'package:flutter/material.dart';
import 'mahasiswa_detail.dart'; // Impor kelas MahasiswaDetail
import 'mahasiswa.dart'; // Impor kelas Mahasiswa

class MahasiswaList extends StatelessWidget {
  final String angkatan;
  final List<Mahasiswa> dataMahasiswa;

  MahasiswaList({required this.angkatan, required this.dataMahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa - $angkatan'),
      ),
      body: ListView.builder(
        itemCount: dataMahasiswa.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(dataMahasiswa[index].nama),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MahasiswaDetail(
                    mahasiswa: dataMahasiswa[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
