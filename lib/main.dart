
import 'package:flutter/material.dart';
import 'package:untitled1/screens_bill/home_bill.dart';
import 'package:untitled1/screens_bill/chapitre1.dart';
import 'package:untitled1/screens_bill/chapitre2.dart';
import 'package:untitled1/screens_bill/chapitre3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Programmes de chapitre Bill',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // On utilise initialRoute au lieu de home quand on a une table de routes
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreenBill(),
        '/chapitre1': (context) => const Chapitre1Screen(),
        '/chapitre2': (context) => const Chapitre2Screen(),
        '/chapitre3': (context) => const Chapitre3Screen(),
      },
    );
  }
}
