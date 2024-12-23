import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fundpec/auth/auth_gate.dart';
import 'package:fundpec/firebase_options.dart';
import 'package:fundpec/screens/login_page.dart';
import 'package:fundpec/themes/light_mode.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     theme: lightmode,
    home: AuthGate(),
    );
  }
}
