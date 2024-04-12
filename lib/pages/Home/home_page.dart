import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/core/app_textStyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Página Inicial',
          style: AppTextStyles.labelTextBlack,
        ),
      ),
      body: Stack(
        children: [
          // Adicionando a imagem de fundo
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/pagina1.png'), //
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Alterado para 'center'
                children: [
                  const SizedBox(
                      height:
                          100), // Adicionado para empurrar os botões para baixo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 80, // Diminuído para 80

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: AppColors.primary, width: 2),
                            ),
                            onPressed: () {
                              // Lógica para abrir o cardápio
                            },
                            child: const Text(
                              'Cardápio',
                              style: AppTextStyles.labelTextBlack,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 80, // Diminuído para 80

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: AppColors.primary, width: 2),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Fazer reserva',
                              style: AppTextStyles.labelTextBlack,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
