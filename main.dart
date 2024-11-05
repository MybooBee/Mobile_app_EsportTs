import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: hal1(),
    );
  }
}

class hal1 extends StatelessWidget {
  const hal1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'img/hal1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black87,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.50),
                    blurRadius: 10,
                    offset: const Offset(5, -5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Welcome to the Information about Esport SMK Telkom Jakarta',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Welcome to our exciting e-sport corner, where every match is a thrilling experience for Mobile Legends enthusiasts!',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const hal2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 100),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class hal2 extends StatelessWidget {
  const hal2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const Text(
                    'E-Sports SMK Telkom Jakarta',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MobileLegends()),
                          );
                        },
                        child: Image.asset(
                          'img/mljpg.jpg',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PUBG()),
                          );
                        },
                        child: Image.asset(
                          'img/epep.jpg',
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 412,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Information',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 235,
            child: GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('https://pubg.com/en-na/main');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Maaf, Linknya bermasalah')),
                  );
                }
              },
              child: Image.asset('img/Pubg 1.jpg', height: 300, width: 300),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 235,
            right: 20,
            child: GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('https://m.mobilelegends.com/');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Maaf, Linknya bermasalah')),
                  );
                }
              },
              child: Image.asset('img/mlo 1.jpg', height: 300, width: 300),
            ),
          ),

          Positioned(
            bottom: 300,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                     GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://chat.whatsapp.com/GgtqINmGM5iGElHaZ45mhr');
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Maaf, Linknya bermasalah')),
                      );
                    }
                  },
                      child: Image.asset('img/wa.png', height: 60, width: 60),
                    ),
                    const SizedBox(height: 5),
                    const Text('Grup',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ],
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.instagram.com/telkomjkt_esports/?utm_source=ig_web_button_share_sheet');
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Maaf, Linknya bermasalah')),
                      );
                    }
                  },
                  child: const Column(
                    children: [
                      Image(image: AssetImage('img/ig.png'), height: 60, width: 60),
                      SizedBox(height: 5),
                      Text('Instagram',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url =
                        Uri.parse('https://s.id/INFO_EKSTRAKURIKULER');
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Maaf, Linknya bermasalah')),
                      );
                    }
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.add_link, color: Colors.black87, size: 60),
                      SizedBox(height: 5),
                      Text('Absensi',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'img/Telkom 1.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileLegends extends StatelessWidget {
  const MobileLegends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Legends',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 350,
            right: 30,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DraftPick()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/3.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 225,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Draft Pick',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            right: 30,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MakroMikro()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/2.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 220,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Makro/Micro',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
            right: 30,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamePlay()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/1.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 220,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Game play',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DraftPick extends StatelessWidget {
  const DraftPick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draft Pick',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 30,
            left: 30,
            child: Stack(
              children: [
                Image.asset('img/Drp.jpg', height: 300, width: 400),
                const Positioned(
                  bottom: 255,
                  left: 6,
                  right: 20,
                  child: Text(
                    'Judul',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 255,
                  left: 185,
                  right: 0,
                  child: Text(
                    'Date: 26 Oktober 2026',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 258,
            bottom: 0,
            left: 35,
            right: 20,
            child: Text(
              '1. Komposisi Tim\n'
              'Tank: Menyerap damage.\n'
              'Damage Dealer: Memberikan damage tinggi.\n'
              'Support: Membantu dengan heal/buff.\n'
              'Mage: Area damage dan crowd control.\n'
              '2. Pengambilan Karakter\n'
              'First Pick: Pilih hero kuat atau counter lawan.\n'
              'Ban Hero: Target hero meta yang kuat.\n'
              'Counter Pick: Pilih hero yang mengungguli pilihan lawan.\n'
              '3. Strategi Tim\n'
              'Komunikasi: Diskusikan role dan strategi.\n'
              'Flexibility: Siap beradaptasi dengan pilihan hero.\n'
              '4. Meta Hero\n'
              'Perhatikan hero yang kuat di meta terbaru.\n'
              '5. Waktu dan Urutan\n'
              'Timing penting dalam memilih dan memban hero.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class MakroMikro extends StatelessWidget {
  const MakroMikro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makro & Micro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 30,
            left: 30,
            child: Stack(
              children: [
                Image.asset('img/Mami.jpg', height: 300, width: 400),
                const Positioned(
                  bottom: 255,
                  left: 6,
                  right: 20,
                  child: Text(
                    'Judul',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 255,
                  left: 185,
                  right: 0,
                  child: Text(
                    'Date: 26 Oktober 2026',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 258,
            bottom: 0,
            left: 35,
            right: 20,
            child: Text(
              'Mikro\n'
              'Data Individual: Fokus pada analisis data di tingkat individu, seperti perilaku pengguna atau fitur spesifik dari data.\n'
              'Model Kecil: Penggunaan model sederhana yang berfungsi untuk mempelajari pola dari data kecil atau dataset yang spesifik.\n'
              'Feature Engineering: Proses memilih dan mengolah fitur dari data untuk meningkatkan performa model.\n'
              'Makro\n'
              'Data Agregat: Menggunakan data dalam jumlah besar dan analisis secara keseluruhan, seperti analisis tren atau pola dalam dataset besar.\n'
              'Model Besar: Implementasi model yang lebih kompleks, seperti deep learning, yang memerlukan data dalam jumlah besar untuk pelatihan.\n'
              'Evaluasi Model: Pengukuran performa model secara keseluruhan, termasuk metrik seperti akurasi, presisi, .',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          
        ],
      ),
    );
  }
}

class GamePlay extends StatelessWidget {
  const GamePlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Play',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 30,
            left: 30,
            child: Stack(
              children: [
                Image.asset('img/GP.jpg', height: 300, width: 400),
                const Positioned(
                  bottom: 255,
                  left: 6,
                  right: 20,
                  child: Text(
                    'Judul',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 255,
                  left: 185,
                  right: 0,
                  child: Text(
                    'Date: 26 Oktober 2026',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 258,
            bottom: 0,
            left: 35,
            right: 20,
             child: Text(
              'Tujuan: Hancurkan turret dan base musuh.\n'
              'Map:'
              'Tiga jalur (top, mid, bottom) dan area hutan.\n'
              'Hero dan Role:\n'
              'Tank: Menyerap damage.\n'
              'Fighter: Damage dealer yang tangguh.\n'
              'Mage: Damage area dan magis.\n'
              'Marksman: Serangan jarak jauh.\n'
              'Support: Heal dan buff tim.\n'
              'Fase Permainan:\n'
              'Early: Farming dan leveling.\n'
              'Mid: Team fight dan ambil objektif.\n'
              'Late: Kontrol Lord dan serangan final.\n'
              'Strategi Teamfight:\n'
              'Posisi yang baik, fokus pada target utama, dan timing skill.\n'
              'Farming: Ambil last hit untuk gold dan manfaatkan buff hutan.\n'
              'Item: Sesuaikan build dengan hero dan situasi.\n'
              'Komunikasi: Gunakan chat dan ping untuk koordinasi.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class PUBG extends StatelessWidget {
  const PUBG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PUBG Mobile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 350,
            right: 30,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Posisi()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/P3.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 232,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Posisi',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            right: 30,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Aim()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/A1.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 228,
                    left: 7,
                    right: 20,
                    child: Text(
                      'AIM',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
            right: 30,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Rotasi()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/R1.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 228,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Rotasi',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Posisi extends StatelessWidget {
  const Posisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posisi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 30,
            left: 30,
            child: Stack(
              children: [
                Image.asset('img/P2.jpg', height: 300, width: 400),
                const Positioned(
                  bottom: 255,
                  left: 6,
                  right: 20,
                  child: Text(
                    'Judul',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 255,
                  left: 185,
                  right: 0,
                  child: Text(
                    'Date: 26 Oktober 2026',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 258,
            bottom: 0,
            left: 35,
            right: 20,
            child: Text(
              'Jenis Posisi:\n'
              'Flanker: Mengelilingi musuh dari sisi.\n'
              'Support: Menembak dari jarak jauh.\n'
              'Sniper: Menggunakan senjata jarak jauh dari posisi aman.\n'
              'Entry Fragger: Memimpin serangan.\n'
              'Area Pertempuran:\n'
              'High Ground: Keuntungan visibilitas.\n'
              'Cover: Gunakan objek untuk berlindung.\n'
              'Prone: Berbaring untuk menghindari deteksi.\n'
              'Rotasi:\n'
              'Rencanakan pergerakan sesuai zona aman.\n'
              'Gunakan kendaraan, tetapi hati-hati dengan kebisingan.\n'
              'Posisi Tim:\n'
              'Bagi zona tanggung jawab dan jaga jarak antar anggota.\n'
              'Pengamatan:\n'
              'Gunakan headset untuk mendengar langkah musuh.\n'
              'Komunikasikan posisi musuh dengan tim.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Aim extends StatelessWidget {
  const Aim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AIM',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 30,
            left: 30,
            child: Stack(
              children: [
                Image.asset('img/A2.jpg', height: 300, width: 400),
                const Positioned(
                  bottom: 255,
                  left: 6,
                  right: 20,
                  child: Text(
                    'Judul',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 255,
                  left: 185,
                  right: 0,
                  child: Text(
                    'Date: 26 Oktober 2026',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 258,
            bottom: 0,
            left: 35,
            right: 20,
             child: Text(
              'Pentingnya Akurasi: Kunci untuk menang dalam pertarungan.\n\n'
              'Sensitivitas: Sesuaikan di pengaturan untuk kenyamanan.\n\n'
              'Latihan: Gunakan mode latihan untuk meningkatkan akurasi.\n\n'
              'Teknik Menembak:\n\n'
              'Tap Shooting: Tembak cepat untuk akurasi.\n'
              'Burst Shooting: Tembak beberapa kali untuk kontrol.\n'
              'Kontrol Recoil: Latih diri untuk mengontrol recoil senjata.\n\n'
              'Posisi: Pilih posisi strategis dan sesuaikan gaya menembak dengan jarak.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Rotasi extends StatelessWidget {
  const Rotasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotasi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 30,
            left: 30,
            child: Stack(
              children: [
                Image.asset('img/R2.jpg', height: 300, width: 400),
                const Positioned(
                  bottom: 255,
                  left: 6,
                  right: 20,
                  child: Text(
                    'Judul',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 255,
                  left: 185,
                  right: 0,
                  child: Text(
                    'Date: 26 Oktober 2026',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 258,
            bottom: 0,
            left: 35,
            right: 20,
              child: Text(
              'Pengertian: Pergerakan tim dari satu lokasi ke lokasi lain untuk menghindari zona berbahaya atau mendapatkan posisi strategis.\n\n'
              'Waktu Rotasi:\n'
              'Lakukan rotasi saat zona aman menyusut.\n'
              'Rotasi lebih awal untuk menghindari kerumunan musuh.\n'
              'Rute Rotasi:\n'
              'Pilih rute dengan banyak cover (pohon, bangunan) untuk perlindungan.\n'
              'Hindari area terbuka yang rentan.\n'
              'Kendaraan:\n'
              'Gunakan kendaraan untuk pergerakan cepat, tetapi waspadai suara.\n'
              'Komunikasi:\n'
              'Diskusikan rute dengan tim untuk koordinasi yang baik.\n'
              'Fleksibilitas:\n'
              'Siap untuk berpindah posisi jika situasi berubah.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Materi extends StatelessWidget {
  const Materi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 300,
            right: 40,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MobileLegends()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/ml1.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 250,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Mobile Legend',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            right: 40,
            left: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PUBG()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('img/pbg1.jpg', height: 300, width: 300),
                  const Positioned(
                    bottom: 250,
                    left: 7,
                    right: 20,
                    child: Text(
                      'Pubg Mobile',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
