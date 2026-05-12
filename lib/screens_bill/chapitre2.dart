
import 'package:flutter/material.dart';

class Chapitre2Screen extends StatelessWidget {
  const Chapitre2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapitre 2'),
      ),
      body: const Center(
        child: Text('Contenu du Chapitre 2'),
      ),
    );
  }
}
