import 'package:flutter/material.dart';

class PantallaPalindromo extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  bool esPalindromo(String texto) {
    String textoLimpio = texto.replaceAll(RegExp(r'[\W_]+'), '').toLowerCase();
    return textoLimpio == textoLimpio.split('').reversed.join('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Verificar Palíndromo')),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration:const InputDecoration(labelText: 'Ingresa un texto'),
            ),
            ElevatedButton(
              onPressed: () {
                bool resultado = esPalindromo(_controller.text);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(resultado ? 'Es un palíndromo' : 'No es un palíndromo'),
                  ),
                );
              },
              child:const Text('Verificar'),
            ),
          ],
        ),
      ),
    );
  }
}
