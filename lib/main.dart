import 'package:flutter/material.dart';

void main() {
  runApp(const BiodataApp());
}

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Nabillatun Nafista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFF8B5A2B), // Menggunakan sistem warna dari cokelat
        scaffoldBackgroundColor: const Color(0xFFFDFDFD),
      ),
      home: const BiodataScreen(),
    );
  }
}

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color chocolateColor = Color(0xFF6F4E37);
    const Color milkChocolate = Color(0xFF8B5A2B);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'PROFILE',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: chocolateColor,
                  letterSpacing: 4.0,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: milkChocolate.withValues(alpha: 0.3), width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 75,
                  backgroundColor: Color(0xFFF8F3EE),
                  backgroundImage: AssetImage('assets/fista1.jpg'),
                ),
              ),
              const Text(
                'Nabillatun Nafista',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF331A00),
                ),
              ),
              const SizedBox(height: 40),
              
              _buildLabelText('NRP', chocolateColor),
              _buildInfoCard('3124521027', chocolateColor),
              
              const SizedBox(height: 18),
              _buildLabelText('Email', chocolateColor),
              _buildInfoCard('nnafista@gmail.com', chocolateColor),
              
              const SizedBox(height: 18),
              _buildLabelText('Program Studi', chocolateColor),
              _buildInfoCard('D3 Teknik Informatika', chocolateColor),
              
              const SizedBox(height: 25),
              _buildLabelText('About me', chocolateColor),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F3EE),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: chocolateColor.withValues(alpha: 0.1)),
                ),
                child: const Text(
                  'Hallo! Saya Nabillatun Nafista, seorang mahasiswa Teknik Informatika yang memiliki antusiasme tinggi di dunia teknologi dan pengembangan digital. Saya sangat menikmati proses belajar hal-hal baru, mulai dari menyusun logika pemrograman hingga mengeksplorasi desain antarmuka yang menarik.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Color(0xFF5D4037),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Divider(color: Colors.black12, thickness: 1),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Semester 4', 
                      style: TextStyle(fontSize: 13, color: Colors.black45)
                    ),
                    Row(
                      children: [
                        Container(
                          width: 8, 
                          height: 8, 
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green)
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Mahasiswa Aktif', 
                          style: TextStyle(fontSize: 12, color: milkChocolate, fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabelText(String label, Color textColor) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 8),
        child: Text(
          label, 
          style: TextStyle(
            fontSize: 14, 
            fontWeight: FontWeight.w600, 
            color: textColor.withValues(alpha: 0.7)
          )
        ),
      ),
    );
  }

  Widget _buildInfoCard(String text, Color textColor) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F3EE),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: textColor.withValues(alpha: 0.1)),
      ),
      child: Text(
        text, 
        style: const TextStyle(
          fontSize: 15, 
          color: Color(0xFF3E2723), 
          fontWeight: FontWeight.w500
        )
      ),
    );
  }
}