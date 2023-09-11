import 'package:flutter/material.dart';
import 'package:proyecto_musica/models/soundrecording_model.dart';

class SoundRecordingPage extends StatelessWidget {
  final SoundRecordingModel recordingModel;

  const SoundRecordingPage({Key? key, required this.recordingModel})
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
          title: const Text('Grabación de Sonido'),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Estado de la Grabación:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              recordingModel.isRecording ? 'Grabando' : 'No Grabando',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                if (recordingModel.isRecording) {
                  // Si ya se está grabando, detén la grabación.
                  recordingModel.stopRecording();
                } else {
                  // Si no se está grabando, inicia la grabación.
                  recordingModel.startRecording();
                }
              },
              child: Text(
                recordingModel.isRecording ? 'Detener Grabación' : 'Iniciar Grabación',
                style: TextStyle(fontSize: 18),
              ),
            ),

          ],
        ),
            
        
      ),
    ),
    );
    
  }
}
