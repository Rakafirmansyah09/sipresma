import 'package:flutter/material.dart';
import 'package:sipres/views/regist.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    Color myColor1 = Color(0xFF1726B5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: myColor1, // Tambahkan properti backgroundColor di sini
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/home.png', // Sesuaikan dengan path gambar Anda
                width: 306,
                height: 306,
              ),
              SizedBox(height: 16),
              Text(
                'Lets Start for your registration',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Regist()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
                primary: Colors.white,
              ),
              child: Text(
                'Start',
                style: TextStyle(
                  fontFamily: 'ARIAL.TTF',
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
