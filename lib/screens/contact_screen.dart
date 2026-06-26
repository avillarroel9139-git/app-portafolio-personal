import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacto & Firma',
          style: GoogleFonts.pirataOne(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 255, 0, 0),
            letterSpacing: 0.5,
          ),
        ),
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
            Text(
              'Anyer David Villarroel Ramos',
              style: GoogleFonts.unifrakturCook(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 0.5,
              ),
            ),

            Text(
              'C.I.: V-30.209.139',
              style: GoogleFonts.unifrakturCook(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 0.5,
              ),
            ),
            const Divider(height: 40),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email, color: Color.fromARGB(255, 255, 0, 0)),
                    title: Text('Correo Electrónico'),
                    subtitle: Text('avillarroel.9139@unimar.edu.ve'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Color.fromARGB(255, 255, 0, 0)),
                    title: Text('Teléfono / WhatsApp'),
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