import 'package:flutter/material.dart';
import 'package:proyecto_musica/models/ecualizer_model.dart';

class SoundEqualizerPage extends StatelessWidget {
  final SoundEqualizerModel equalizerModel;

  const SoundEqualizerPage({Key? key, required this.equalizerModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Ecualizador'),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ajuste de Ecualización',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), // Color añadido
            ),
            SizedBox(height: 20),
            Text(
              'Graves',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Estilo modificado
            ),
            Slider(
              value: equalizerModel.bassLevel,
              onChanged: (newValue) {
                // Actualiza el nivel de graves en el modelo.
                equalizerModel.bassLevel = newValue;
                equalizerModel.applyEqualizerSettings(); // Aplica la configuración.
              },
            ),
            Text(
              'Agudos',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Estilo modificado
            ),
            Slider(
              value: equalizerModel.trebleLevel,
              onChanged: (newValue) {
                // Actualiza el nivel de agudos en el modelo.
                equalizerModel.trebleLevel = newValue;
                equalizerModel.applyEqualizerSettings(); // Aplica la configuración.
              },
            ),
            Text(
              'Medios',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Estilo modificado
            ),
            Slider(
              value: equalizerModel.midLevel,
              onChanged: (newValue) {
                // Actualiza el nivel de medios en el modelo.
                equalizerModel.midLevel = newValue;
                equalizerModel.applyEqualizerSettings(); // Aplica la configuración.
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Restablece la ecualización a los valores predeterminados.
                equalizerModel.resetEqualizer();
              },
              child: Text('Restablecer Ecualización'),
            ),
          ],
        ),
      )
    ),
    );      
  }
}
