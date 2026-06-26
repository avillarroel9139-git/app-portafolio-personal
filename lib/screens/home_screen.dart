import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portafolio - Anyer Villarroel'),
        actions: [
          IconButton(
            icon: const Icon(Icons.contact_mail),
            onPressed: () {
              // RECORDATORIO!!! AGREGAR LA FUNCIÓN DE CONTACTO AQUÍ!!!!
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
                  SizedBox(height: 16),
                  Text(
                    'Anyer Villarroel',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Desarrollador Flutter',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Divider(),

            const Text(
              '¿Quién soy?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Soy un estudiante apasionado por la tecnología y el desarrollo de aplicaciones móviles. Me gusta aprender nuevas herramientas y crear soluciones eficientes. Actualmente estoy profundizando mis conocimientos en Dart y Flutter.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),

            const Text(
              'Mis Hobbies',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.computer),
              title: Text('Crear proyectos de programación y Electrónica'),
            ),
            const ListTile(
              leading: Icon(Icons.sports_esports),
              title: Text('Jugar Videojuegos'),
            ),
            const ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Ver Series y películas'),
            ),
            const SizedBox(height: 32),
            const Divider(),

            // Pie de página (Footer)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  '© 2026 Anyer Villarroel. Todos los derechos reservados.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
