import 'package:flutter/material.dart';
import 'package:medapp/Second_page.dart';
import 'package:medapp/design_page.dart';
import 'package:medapp/third_page.dart';
import 'package:medapp/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:  GoogleFonts.plusJakartaSansTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ThirdPage(),
    );
  }
}

