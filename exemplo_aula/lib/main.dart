import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'Calculadora',
      routes: <String, WidgetBuilder>{
        // Permite usar chaves para identificar rotas
        'Calculadora': (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Calculadora'),
              ),
              body: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Alinha o conteúdo no centro
                      children: [
                        const Text('0'),
                        const SizedBox(
                            width: 10), // Espaçamento entre os elementos
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context,
                                'Calculadora/informarX'); // Navega para a tela informarX
                          },
                          child: const Text('Informar X'), // Texto do botão
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Alinha o conteúdo no centro
                      children: [
                        const Text('0'),
                        const SizedBox(
                            width: 10), // Espaçamento entre os elementos
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context,
                                'Calculadora/informarX'); // Navega para a tela informarX
                          },
                          child: const Text('Informar Y'), // Texto do botão
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Calculadora');
                      },
                      child: const Text('Calcular'),
                    ),
                    const Text('Resultado'),
                  ],
                ),
              ));
        },
        'Calculadora/informarX': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Informe o valor de X:'),
            ),
          );
        }
      },
    ),
  );
}
