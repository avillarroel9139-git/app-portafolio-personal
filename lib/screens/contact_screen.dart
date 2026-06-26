import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_portafolio_personal/widgets/contact_footer.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
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
                  Divider(color: Color(0xFF2A2A30), indent: 15, endIndent: 15),
                  ListTile(
                    leading: Icon(Icons.phone, color: Color.fromARGB(255, 255, 0, 0)),
                    title: Text('Teléfono / WhatsApp'),
                    subtitle: Text('+58 424 8525158'),
                  ),
                  Divider(color: Color(0xFF2A2A30), indent: 15, endIndent: 15),
                  ListTile(
                    leading: Icon(Icons.link, color: Colors.redAccent),
                    title: Text('GitHub Perfil'),
                    subtitle: Text('github.com/avillarroel9139-git', style: TextStyle(fontFamily: 'Poppins')),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/katana_yami.png', 
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ],
            ),
            ),
          
          
            const SizedBox(height: 30),
            const ContactFooter(),
          ],
        ),
      ),
    );
  }
}