import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/pages/Cardapio/cardapio_page.dart';
import 'package:lanchonete/pages/Home/home_page.dart';
import 'package:lanchonete/pages/Login/login_page.dart';
import 'package:lanchonete/pages/Cardapio/cardapio_page.dart';

  
  
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
      ),
      initialRoute: '/cardapio', // Defina a rota inicial
      routes: {
        '/': (context) => const LoginPage(), // Rota para a página de login
        '/home': (context) => const HomePage(), // Rota para a página inicial
        '/cardapio': (context) => const CardapioPage(), // Rota para a página do cardápio
      },
    );
  }
}