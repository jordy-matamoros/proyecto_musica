import 'package:flutter/material.dart';

class SoundRecordingModel {
  bool isRecording = false;
  String recordingFilePath = ""; // Ruta del archivo de grabación
  int recordingDuration = 0; // Duración de la grabación en segundos
  List<String> recordedFiles = []; // Lista de archivos grabados
  
  DateTime? startTime; // Momento en que se inicia la grabación
  DateTime? endTime;   // Momento en que se detiene la grabación
  
  // Método para iniciar la grabación
  void startRecording() {
    // Lógica para iniciar la grabación aquí
    isRecording = true;
    startTime = DateTime.now();
    // Iniciar el temporizador u otros procesos necesarios
  }
  
  // Método para detener la grabación
  void stopRecording() {
    // Lógica para detener la grabación aquí
    isRecording = false;
    endTime = DateTime.now();
    // Detener el temporizador u otros procesos necesarios
    recordingDuration = calcularDuracion(); // Calcular la duración
  }

  // Método para guardar la grabación
  void saveRecording() {
    // Lógica para guardar la grabación aquí
    recordedFiles.add(recordingFilePath);
    // Restablecer propiedades para una nueva grabación si es necesario
    recordingFilePath = "";
    recordingDuration = 0;
    startTime = null;
    endTime = null;
  }

  // Método para calcular la duración de la grabación
  int calcularDuracion() {
    if (startTime != null && endTime != null) {
      final Duration duracion = endTime!.difference(startTime!);
      return duracion.inSeconds;
    } else {
      return 0; // En caso de que no haya tiempo registrado
    }
  }
}

