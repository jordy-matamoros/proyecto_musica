import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller; //
  final String
      hintText; //va salir un string masomenos de lo que deveria escribir el usurio
  final bool obsscureText; //para la contraseña que asome ***

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsscureText,
        decoration: InputDecoration(
            //cuando el usuario no estece dentro
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple.shade200,
                width: 2,
              ),
            ),
            //cuando el usuario este dentro
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurple.shade50,
              ),
            ),
            fillColor: Colors.purple.shade100,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade500)),
      ),
    );
  }
}
