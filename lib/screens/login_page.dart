import 'package:flutter/material.dart';
import 'package:fundpec/auth/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void login(BuildContext context) async{
    final authService = AuthService();
    try {
      await authService.signInWithEmailPassword(email: 'jishnucr2020@gmail.com', password: '123');
    } catch (e) {
      showDialog(context: context, builder: (context)=> AlertDialog(title: Text(e.toString()),));
    }

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
        Icon(Icons.money,color: Colors.black,),

      ],
     ),
    );
  }
}