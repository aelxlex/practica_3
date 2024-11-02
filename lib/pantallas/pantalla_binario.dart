import 'package:flutter/material.dart';

class PantallaBinario extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  String convertirABinario(int numero) => numero.toRadixString(2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Convertidor a Binario')),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration:const InputDecoration(labelText: 'Ingresa un número entero'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                int numero = int.tryParse(_controller.text) ?? 0;
                String binario = convertirABinario(numero);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('El número en binario es: $binario'),
                  ),
                );
              },
              child:const Text('Convertir'),
            ),
          ],
        ),
      ),
    );
  }
}
