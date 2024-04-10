import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_textStyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Página Inicial', style: AppTextStyles.labelTextBlack,
        )
      )
    );
     
  }
}