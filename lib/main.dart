import 'package:flutter/material.dart';
import 'pantallas/pantalla_palindromo.dart';
import 'pantallas/pantalla_numeros_amigos.dart';
import 'pantallas/pantalla_binario.dart';

void main() {
  runApp(Practica3App());
}

class Practica3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Práctica 3',
      home: MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaPalindromo()),
                );
              },
              child: const Text('Verificar Palíndromo'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaNumerosAmigos()),
                );
              },
              child: const Text('Identificar Números Amigos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaBinario()),
                );
              },
              child: const Text('Convertidor a Binario'),
            ),
          ],
        ),
      ),
    );
  }
}
