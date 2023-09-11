import 'package:audio_studio/page/home_page.dart';
import 'package:audio_studio/page/login_or_register.dart';
import 'package:audio_studio/page/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is loggin in
            if (snapshot.hasData) {
              return HomePage();
            }

            //user in NOT loogged in
            else {
              return LoginOrRegisterPage();
            }
          }),
    );
  }
}
