import 'package:flutter/material.dart';
import 'mahasiswa.dart'; // Impor kelas Mahasiswa

class MahasiswaDetail extends StatelessWidget {
  final Mahasiswa mahasiswa;

  MahasiswaDetail({required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nama Mahasiswa:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              mahasiswa.nama,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3JtNjg1ZGVzaWduLXRuLXJlbWl4LTAwMWMuanBn.jpg'), // URL gambar profil mahasiswa
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nomor Induk Mahasiswa:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              mahasiswa.nomorInduk,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Keterangan Alamat:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol alamat rumah ditekan
                  },
                  child: Text('Alamat Rumah'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol telepon hp ditekan
                  },
                  child: Text('Telepon HP'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
