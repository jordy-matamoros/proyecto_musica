import 'package:flutter/material.dart';

class SoundEqualizerModel {
  // Propiedades relacionadas con la ecualización de sonido
  double bassLevel = 0.1; // Nivel de graves
  double trebleLevel = 0.5; // Nivel de agudos
  double midLevel = 0.3; // Nivel de medios

  // Método para aplicar la configuración de ecualización
  void applyEqualizerSettings() {
    // Aquí puedes implementar la lógica para aplicar la configuración de ecualización
    // a la reproducción de sonido en tu aplicación.
  }

  // Método para restablecer la ecualización a los valores predeterminados
  void resetEqualizer() {
    bassLevel = 0.0;
    trebleLevel = 0.0;
    midLevel = 0.0;
    applyEqualizerSettings(); // Aplicar la configuración de ecualización actualizada.
  }
}
