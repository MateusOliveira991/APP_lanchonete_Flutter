import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_textStyles.dart';
import 'package:lanchonete/core/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: CardapioPage(),
    );
  }
}

class CardapioPage extends StatelessWidget {
  const CardapioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cardápio',
          style: AppTextStyles.labelTextBlack, // Aplicando o estilo ao título
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          CardapioItem(
            imagem: 'assets/images/simples.png',
            descricao: 'Hambúrguer Simples',
            preco: 16.99,
          ),
          CardapioItem(
            imagem: 'assets/images/bacon.png',
            descricao: 'X-Bacon',
            preco: 17.99,
          ),
          CardapioItem(
            imagem: 'assets/images/egg.png',
            descricao: 'X-Egg Bacon',
            preco: 18.99,
          ),
          
          CardapioItem(
            imagem: 'assets/images/duplo.png',
            descricao: 'Duplo X.Burguer',
            preco: 31.99,
          ),
          CardapioItem(
            imagem: 'assets/images/pizza.png',
            descricao: 'Pizza',
            preco: 49.99,
          ),
          CardapioItem(
            imagem: 'assets/images/porcao.png',
            descricao: 'Porção de Carne',
            preco: 69.99,
          ),
          CardapioItem(
            imagem: 'assets/images/bebida.png',
            descricao: 'Refrigerante',
            preco: 4.99,
          ),
          CardapioItem(
            imagem: 'assets/images/vinho.png',
            descricao: 'Vinho Tinto - Taça',
            preco: 22.99,
          ),
        ],
      ),
    );
  }
}

class CardapioItem extends StatelessWidget {
  final String imagem;
  final String descricao;
  final double preco;

  const CardapioItem({
    Key? key,
    required this.imagem,
    required this.descricao,
    required this.preco,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          imagem,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(
          descricao,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('R\$ $preco'),
      ),
    );
  }
}