import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color myColor1 = Color(0xFF1726B5);

    return SafeArea(
      child: Column(
        children: [
          // Bagian atas dengan latar belakang biru
          Container(
            decoration: BoxDecoration(
              color: myColor1,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.2,
            child: Stack(
              children: [
                Positioned(
                top: 20,  // Sesuaikan nilai top sesuai kebutuhan
                left: (MediaQuery.of(context).size.width - 62) / 2,  // Untuk menempatkan di tengah, kurangkan lebar teks dari lebar layar dan bagi dua
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
                // Menempatkan gambar di tengah latar belakang biru
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/ew.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
          // Bagian bawah dengan latar belakang putih
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0), // Jarak dari layar kiri // Ganti dengan konten sesuai kebutuhan
            ),
          ),
        ],
      ),
    );
  }
}
