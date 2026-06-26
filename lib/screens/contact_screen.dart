import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto & Firma'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Desarrollado por:',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Text(
              'Anyer Villarroel',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 40),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.indigo),
                    title: Text('Correo Electrónico'),
                    subtitle: Text('avillarroel.9139@unimar.edu.ve'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.indigo),
                    title: Text('Teléfono / Telegram'),
                    subtitle: Text('+58 424 8525158'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}