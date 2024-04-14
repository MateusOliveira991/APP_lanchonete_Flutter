import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/pages/Cardapio/cardapio_page.dart';
import 'package:lanchonete/pages/Home/home_page.dart';
import 'package:lanchonete/pages/Login/login_page.dart';
import 'package:lanchonete/pages/Reserva/reserva_page.dart';


  
  
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speak Bar aplicativo',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
      ),
      initialRoute: '/reserva', 
      routes: {
        '/': (context) => const LoginPage(), 
        '/home': (context) => const HomePage(), 
        '/cardapio': (context) => const CardapioPage(), 
        '/reserva': (context) => const ReservaPage(),
      },
    );
  }
}