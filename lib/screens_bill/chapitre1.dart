
import 'package:flutter/material.dart';
import 'package:untitled1/screens_bill/chapitre1ExoBill/exercice1Bill.dart';
import 'package:untitled1/screens_bill/chapitre1ExoBill/exercice2Bill.dart';

class Chapitre1Screen extends StatelessWidget {
  const Chapitre1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice du Chapitre 1 de Bill'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          //Exo 1
        ListTile(
          leading: const Icon(Icons.ice_skating, size: 30,),
          title: const Text(
            'Exercice 1:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Voir lexercice proposer par bill'),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder:(context) => const Exercice1Screen()));
          },
        ),
          const Divider(),

          //Exo 2
          ListTile(
            leading: const Icon(Icons.ice_skating, size: 30,),
            title: const Text(
              'Exercice 2:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Voir lexercice 2  proposer par bill'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder:(context) => const Exercice2Screen()));
            },
          ),
          const Divider(),





        ],
      ),
    );
  }
}
