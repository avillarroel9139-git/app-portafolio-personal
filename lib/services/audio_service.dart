import 'dart:developer' show log;
import 'package:audioplayers/audioplayers.dart';

class AudioService {

  static final AudioService _instance = AudioService._internal();
  factory AudioService() {
    return _instance;
  }
  AudioService._internal();

  final AudioPlayer audioPlayer = AudioPlayer();
  bool isInitialized = false;

  Future<void> iniciarMusica() async {
    if (isInitialized) return;

    try {

      await audioPlayer.setReleaseMode(ReleaseMode.loop); 

      await audioPlayer.setVolume(50.0); 
      
      await audioPlayer.play(AssetSource('audios/grandeur.mp3'));
      
      isInitialized = true;
    } catch (e) {
      log("Error mágico de audio: $e");
    }
  }

  Future<void> pausar() async {
    await audioPlayer.pause();
  }

  Future<void> reanudar() async {
    await audioPlayer.resume();
  }
}