
import 'package:flutter/material.dart';

class HomeScreenBill extends StatelessWidget {
  const HomeScreenBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Les chapitres de lexercice 1 de Bill'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // ========== Chapitre 1 ==========
          ListTile(
            leading: const Icon(Icons.calculate, size: 30),
            title: const Text(
              'Chapitre 1:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Voir les exos du chapitre 1 proposer par bill'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, '/chapitre1');
            },
          ),

          const Divider(),

          // ========== Chapitre 2 ==========
          ListTile(
            leading: const Icon(Icons.transform, size: 30),
            title: const Text(
              'Chapitre 2:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Voir les exos du chapitre 2 proposer par bill'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, '/chapitre2');
            },
          ),

          const Divider(),

          // ========== Chapitre 3 ==========
          ListTile(
            leading: const Icon(Icons.note, size: 30),
            title: const Text(
              'Chapitre 3',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Voir les exos du chapitre 3'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, '/chapitre3 proposer par bill');
            },
          ),
        ],
      ),
    );
  }
}
