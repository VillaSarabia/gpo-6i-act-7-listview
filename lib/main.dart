import 'package:flutter/material.dart';

void main() => runApp(const AppDecktcg());

class AppDecktcg extends StatelessWidget {
  const AppDecktcg({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "decktcg",
      home: Productos(),
    );
  }
}

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tienda DECK TCG Yahel',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 71, 209),
        elevation: 4,
        leading: const Icon(
          Icons.ac_unit,
          color: Color.fromARGB(255, 231, 45, 45),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.style, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      // --- NUEVO BODY ---
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCustomTile(
            title: 'Configuración',
            subtitle: 'Ajustes de la cuenta',
            icon: Icons.settings,
            color: Colors.blueAccent,
          ),
          _buildCustomTile(
            title: 'Mensajes',
            subtitle: '3 mensajes nuevos',
            icon: Icons.message,
            color: Colors.purpleAccent,
          ),
          _buildCustomTile(
            title: 'Favoritos',
            subtitle: 'Tus guardados',
            icon: Icons.favorite,
            color: Colors.redAccent,
          ),
          _buildCustomTile(
            title: 'Pagos',
            subtitle: 'Historial de facturación',
            icon: Icons.payment,
            color: Colors.greenAccent,
          ),
          _buildCustomTile(
            title: 'Perfil',
            subtitle: 'Editar información',
            icon: Icons.person,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }

  // --- MÉTODO PARA CONSTRUIR LOS TILES ---
  Widget _buildCustomTile({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Acción al tocar cada opción
        },
      ),
    );
  }
} // Fin clase productos