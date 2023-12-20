import 'package:flutter/material.dart';
import 'package:sipres/views/login.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
void main() {
   sqfliteFfiInit();
  databaseFactory = databaseFactoryFfiWeb;

  runApp(const MainApp());


}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:Login(),
      
    );
  }
}
