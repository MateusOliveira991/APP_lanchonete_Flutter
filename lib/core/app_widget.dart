import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
  
  
  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lanchonete',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
      ),
      home: HomePage(),
    );
  }

  }