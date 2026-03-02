import 'package:flutter/material.dart';

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const chocolateColor = Color(0xFF3E2723);
    const milkChocolate = Color(0xFF795548);
    const softCream = Color(0xFFFDF5E6);

    return Scaffold(
      backgroundColor: softCream,
      appBar: AppBar(
        title: const Text('Profil Mahasiswa', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: milkChocolate,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: milkChocolate, width: 3),
                    ),
                    child: const CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage('assets/fista1.jpg'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Nabillatun Nafista',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: chocolateColor),
                  ),
                  const Text('NRP. 3124521027', style: TextStyle(fontSize: 15, color: milkChocolate)),
                  const Text('nnafista@gmail.com', style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionHeader('About Me', chocolateColor),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: milkChocolate.withValues(alpha: 0.2)),
              ),
              child: const Text(
                'Hallo! Saya Nabillatun Nafista, mahasiswa Teknik Informatika yang berfokus pada pengembangan solusi digital melalui logika pemrograman dan desain antarmuka yang menarik. Saya sangat menikmati proses belajar teknologi baru untuk membangun perangkat lunak yang andal, efisien, dan bermanfaat bagi banyak orang. Dengan dedikasi tinggi dalam mengasah kemampuan teknis, saya berkomitmen untuk terus berinovasi dan menciptakan produk digital yang fungsional serta memberikan pengalaman pengguna yang luar biasa bagi masyarakat luas.',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.5, color: Color(0xFF4E342E)),
              ),
            ),
            const SizedBox(height: 24),
            _buildSectionHeader('Detail Profil', chocolateColor),
            const SizedBox(height: 12),
            Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: milkChocolate.withValues(alpha: 0.1)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    _buildInfoTile(Icons.school, 'Program Studi', 'D3 Teknik Informatika'),
                    const Divider(indent: 50),
                    _buildInfoTile(Icons.apartment, 'Kampus', 'Politeknik Elektronika Negeri Surabaya'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, Color color) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF795548)),
      title: Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 15, color: Colors.black87)),
    );
  }
}