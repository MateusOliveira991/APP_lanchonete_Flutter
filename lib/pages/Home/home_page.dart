import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/core/app_textStyles.dart';
import 'package:lanchonete/pages/Cardapio/cardapio_page.dart';

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
                    MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      height:
                          100), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 80, 

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  color: AppColors.primary, width: 2),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardapioPage()),
                              );
                            },
                            child: const Text(
                              'Cardápio Delivery',
                              style: AppTextStyles.labelTextBlack,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 80, 

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  color: AppColors.primary, width: 2),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Reserva de Mesa',
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
