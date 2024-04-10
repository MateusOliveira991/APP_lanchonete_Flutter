import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/core/app_textStyles.dart';

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
                contentPadding: AppTextStyles.contentPadding,
                labelText: 'Usuário',  labelStyle: AppTextStyles.labelTextBlack),

              ),
          
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () { Navigator.pushNamed(context, '/home'); },

          //onPressed sem botão de Voltar:
          //     onPressed: () {
          //   Navigator.of(context).pushReplacementNamed('/home');
          // },

          
              style: const ButtonStyle(
                
              ),
              child: const Text('Entrar', style: AppTextStyles.buttonTextBlack),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
