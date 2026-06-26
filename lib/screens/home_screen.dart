import 'package:flutter/material.dart';
import 'package:app_portafolio_personal/themes/app_theme.dart';
import 'package:app_portafolio_personal/widgets/custom_footer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = const Color.fromARGB(255, 0, 0, 0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Portafolio',
          style: GoogleFonts.unifrakturCook( 
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(221, 255, 0, 0),
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.connect_without_contact),
            color: Colors.white,
            tooltip: 'Contacto',
            onPressed: () {
              Navigator.pushNamed(context, 'contact');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    primaryColor,
                    const Color.fromARGB(255, 255, 0, 0).withValues(alpha: 0.5),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Color.fromARGB(255, 255, 36, 36),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: primaryColor,
                      child: Icon(Icons.person, size: 55, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Anyer Villarroel',
                    style: GoogleFonts.unifrakturCook( 
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(221, 255, 255, 255),
                      letterSpacing: 0.5,
            )
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Estudiante de Ingeniería en sistemas / Programación III',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle(Icons.account_circle, '¿Quién soy?'),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Soy un estudiante universitario entusiasta por el desarrollo de software y la tecnología. Me considero una persona autodidacta, comprometida con expandir mis habilidades lógicas y de diseño enfocado en la experiencia de usuario (UX/UI). Actualmente construyendo mis primeras soluciones móviles multiplataforma.',
                        style: TextStyle(fontSize: 15, height: 1.4),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  _buildSectionTitle(Icons.sports_esports, 'Mis Hobbies'),
                  
                  const SizedBox(height: 10),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.code, color: primaryColor),
                          title: Text('Programación'),
                          subtitle: Text('Crear pequeños scripts y layouts web/móviles.'),
                        ),
                        Divider(indent: 20, endIndent: 20),
                        ListTile(
                          leading: Icon(Icons.translate, color: primaryColor),
                          title: Text('Aprender idiomas'),
                          subtitle: Text('Practicar inglés con videos y lecturas técnicas.'),
                        ),
                        Divider(indent: 20, endIndent: 20),
                        ListTile(
                          leading: Icon(Icons.music_note, color: primaryColor),
                          title: Text('Música y Gaming'),
                          subtitle: Text('Escuchar podcasts de tecnología y jugar en mis tiempos libres.'),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ),

            const CustomFooter(),
          ],
        ),
      ),
    );
  }}
  Widget _buildSectionTitle(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: AppTheme.primary, size: 28),
        const SizedBox(width: 10),
        Text(
          title,
          style: GoogleFonts.unifrakturCook( 
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(221, 255, 255, 255),
            letterSpacing: 0.5,
          )
        ),
      ],
    );
  }