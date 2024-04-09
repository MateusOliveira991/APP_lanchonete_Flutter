import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
           
              
              Colors.black,
              Color.fromARGB(255, 232, 217, 12),
              Colors.black,
              
            ],
            
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            Container(
              child: Image.asset('assets/images/logo.png'),
              
            ),
            TextFormField(
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Usuário',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Entrar'),
              style: ButtonStyle(
                
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
