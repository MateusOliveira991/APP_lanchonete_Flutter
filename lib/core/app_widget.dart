import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/pages/home_page.dart';
  
  
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lanchonete',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
      ),
      home: const HomePage(),
    );
  }

  }