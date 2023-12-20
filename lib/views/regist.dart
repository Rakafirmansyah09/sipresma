import 'package:flutter/material.dart';
import 'package:sipres/views/beranda/menu.dart';

class Regist extends StatelessWidget {
  const Regist({Key? key});

  @override
  Widget build(BuildContext context) {
     Color myColor1 = Color(0xFF1726B5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: myColor1,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/regist.png', // Sesuaikan dengan path gambar Anda
                width: 300,
                height: 300,
              ),
              SizedBox(height: 20),

              Text(
                'Hi, how are you',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 20),

              // Tulisan di atas form nama
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Set posisi tulisan ke kiri
                  children: [
                    Text(
                      'Your NIM',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left, // Set posisi tulisan ke kiri
                    ),
                    SizedBox(height: 8), // Jarak antara tulisan dan TextField
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black38),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Tulisan di atas form password
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Set posisi tulisan ke kiri
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left, // Set posisi tulisan ke kiri
                    ),
                    SizedBox(height: 8), // Jarak antara tulisan dan TextField
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black38),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Kotak centang "Remember Me"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Checkbox(
                      value: false, // Sesuaikan dengan nilai yang sesuai
                      onChanged: (bool? value) {
                        // Tindakan yang diambil ketika kotak centang diubah
                      },
                      fillColor: MaterialStateProperty.all(Colors.white),
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 40), // Sesuaikan dengan jarak yang diinginkan
          child: Container(
            margin: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Menu())); // Tindakan yang diambil ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
                primary: Colors.white,
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 19, 32, 214),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Regist());
}
