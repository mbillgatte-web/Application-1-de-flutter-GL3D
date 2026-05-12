import 'package:flutter/material.dart';

class Exercice1Screen extends StatelessWidget {
  const Exercice1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // --- LOGIQUE (Votre code Dart) ---
    List<int> nombres = [12, 45, 7, 89, 34];
    int somme = nombres.reduce((a, b) => a + b);
    double moyenne = somme / nombres.length;
    int min = nombres.reduce((a, b) => a < b ? a : b);
    int max = nombres.reduce((a, b) => a > b ? a : b);

    // --- INTERFACE (Le design) ---
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercice 1 : Statistiques"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Affichage de la liste d'origine
            _buildCard("Liste des nombres", nombres.toString(), Icons.list, Colors.grey),
            const SizedBox(height: 10),

            // Affichage des résultats avec des couleurs différentes
            _buildCard("Somme totale", "$somme", Icons.add_circle, Colors.green),
            _buildCard("Moyenne", moyenne.toStringAsFixed(2), Icons.functions, Colors.orange),
            _buildCard("Valeur Minimale", "$min", Icons.vertical_align_bottom, Colors.red),
            _buildCard("Valeur Maximale", "$max", Icons.vertical_align_top, Colors.blue),
          ],
        ),
      ),
    );
  }

  // Widget personnalisé pour créer une carte de résultat propre
  Widget _buildCard(String title, String value, IconData icon, Color color) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: color, size: 30),
        title: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        subtitle: Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
      ),
    );
  }
}