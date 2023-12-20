import 'package:flutter/material.dart';
import 'package:sipres/views/form/itemform.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color myColor1 = Color(0xFF1726B5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Bagian atas dengan latar belakang biru dan gambar
          Container(
            decoration: BoxDecoration(
              color: myColor1,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                // Gambar ditempatkan di tengah latar belakang biru
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100), // Sesuaikan jarak dari atas
                    child: Image.asset(
                      'assets/frame.png', // Gantilah 'frame.png' dengan path gambar Anda
                      width: 327, // Sesuaikan lebar gambar sesuai kebutuhan
                      height: 119, // Sesuaikan tinggi gambar sesuai kebutuhan
                    ),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 26,
                  child: Text(
                    'Hello Raka',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 26,
                  child: Text(
                    'You want to register your achievements today?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          // Bagian bawah dengan latar belakang putih
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0), // Jarak dari layar kiri
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => itemform(
                              warna: myColor1,
                              title: "SIPRESMA",
                              imageAsset: 'assets/piala.png',
                            ),
                          ),
                        ); // Tindakan yang diambil ketika tombol keempat ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 65),
                        primary: myColor1,
                      ),
                      child: Text(
                        'Start SIPRESMA',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Gambar ditempatkan di bawah tombol
                ],
              ),
              
            ),
            
          ),
        ],
      ),
    );
  }
}
