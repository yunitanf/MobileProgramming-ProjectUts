import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto Profil
              Center(
                child: CircleAvatar(
                  radius: 50, // Ukuran foto profil
                  backgroundImage: AssetImage(
                      'assets/image/profil.jpeg'), // Ganti dengan URL foto profil
                ),
              ),
              SizedBox(height: 20),

              // Deskripsi Nama Nasabah
              Text(
                'Nama Nasabah',
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              _buildProfileField('Yunita Nur Fadhila'),

              SizedBox(height: 20),

              // Deskripsi Jenis Kelamin
              Text(
                'Jenis Kelamin',
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              _buildProfileField('Perempuan'),

              SizedBox(height: 20),

              // Deskripsi Alamat
              Text(
                'Alamat',
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              _buildProfileField(
                  'Jl. Plosogenuk Rt/Rw 004/001, Perak, jombang'),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membangun kolom profil
  Widget _buildProfileField(String value) {
    return Container(
      padding: EdgeInsets.all(15), // Menambah padding untuk kolom
      width: double.infinity, // Memperpanjang kolom agar memenuhi lebar
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
      ),
    );
  }
}