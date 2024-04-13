import 'package:flutter/material.dart';

class CardapioApp extends StatelessWidget {
  const CardapioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardapioPage(),
    );
  }
}

class CardapioPage extends StatelessWidget {
  const CardapioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardápio'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          CardapioItem(
            imagem: 'assets/images/simples.png',
            descricao: 'Hambúrguer Simples',
            preco: 16.50,
          ),
          CardapioItem(
            imagem: 'assets/images/duplo.png',
            descricao: 'Duplo X.Burguer',
            preco: 30.00,
          ),
          CardapioItem(
            imagem: 'assets/images/pizza.png',
            descricao: 'Pizza',
            preco: 49.90,
          ),
          CardapioItem(
            imagem: 'assets/images/porcao.png',
            descricao: 'Porção de Carne',
            preco: 69.90,
          ),
          CardapioItem(
            imagem: 'assets/images/bebida.png',
            descricao: 'Refrigerante',
            preco: 4.90,
          ),
          CardapioItem(
            imagem: 'assets/images/vinho.png',
            descricao: 'Vinho Tinto - Taça',
            preco: 22.00,
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
    super.key,
    required this.imagem,
    required this.descricao,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          imagem,
          width: 80,
          height: 80,
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