import 'package:audio_studio/components/my_botton.dart';
import 'package:audio_studio/components/my_textfield.dart';
import 'package:audio_studio/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

//pasar de statefulwidget control + . y salen opciones para convertirlo
class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
    //show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      //pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading circle
      Navigator.pop(context);
      //show  error message
      showErrMessage(e.code);
    }
  }

  //error message to user
  void showErrMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.deepPurple,
              title: Center(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //      backgroundColor: Colors.deepPurple[400], //color de todo el fondo

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade800.withOpacity(0.8),
              Colors.deepPurple.shade200.withOpacity(0.8),
            ], // Añade tus colores aquí
          ),
        ),
        child: SafeArea(
          //SafeArea ayuda que la interfaz del usuario sea tapado en la parte superior

          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //logo
                  const Icon(
                    Icons.my_library_music_rounded,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //welcome back, you've been missed!
                  const Text(
                    'Bienvenido a AudioStudio',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //usuario texfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Escriba su email',
                    obsscureText: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //pasword texfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Escriba su Contraseña',
                    obsscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //ovidaste tu contraseña?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '¿Olvidaste la contraseña ?',
                          style: TextStyle(color: Colors.grey.shade50),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //sign botton
                  MyBotton(
                    text: "Iniciar Sección",
                    onTap: signUserIn,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //o continuar con
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'O continuar con ',
                            style: TextStyle(color: Colors.grey.shade100),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //google + culquiera otro botton
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google button

                      SquareTile(imagePath: "lib/imagenes/logoGoogle.png"),
                      SizedBox(
                        width: 25,
                      ),
                      //other button
                    ],
                  ),
                  const SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '¿No estas registrado?',
                        style: TextStyle(color: Colors.grey.shade200),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Registrate ahora!',
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                  //registrarte
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
