import 'package:flutter/material.dart';

import 'package:sipres/views/beranda/menu.dart';

void main() {
  runApp(complete());
}

class complete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myColor1 = Color(0xFF1726B5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: myColor1,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/complete.png',
                  width: 243,
                  height: 243,
                ),
                SizedBox(height: 16),
                Text(
                  'Your data has been successfully entered!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Menengahkan teks
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(double.infinity, 60),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Go Home',
                      style: TextStyle(
                        fontSize: 18,
                        color: myColor1,
                      ),
                      textAlign: TextAlign.center, // Menengahkan teks
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

