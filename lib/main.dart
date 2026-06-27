import 'package:flutter/material.dart';
import 'package:app_portafolio_personal/screens/home_screen.dart';
import 'package:app_portafolio_personal/screens/contact_screen.dart';
import 'package:app_portafolio_personal/themes/app_theme.dart';
import 'package:app_portafolio_personal/services/audio_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AudioService().iniciarMusica();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio Personal',
      theme: AppTheme.darkTheme,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'contact': (context) => const ContactScreen(),
      },
    );
  }
}