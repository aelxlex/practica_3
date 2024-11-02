import 'package:flutter/material.dart';

class PantallaNumerosAmigos extends StatelessWidget {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  bool sonAmigos(int a, int b) {
    int sumaDivisores(int n) => List.generate(n, (i) => i + 1).where((i) => n % i == 0 && i != n).fold(0, (a, b) => a + b);
    return sumaDivisores(a) == b && sumaDivisores(b) == a;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Identificar Números Amigos')),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: const InputDecoration(labelText: 'Número 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2Controller,
              decoration:const InputDecoration(labelText: 'Número 2'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                int num1 = int.tryParse(_num1Controller.text) ?? 0;
                int num2 = int.tryParse(_num2Controller.text) ?? 0;
                bool resultado = sonAmigos(num1, num2);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(resultado ? 'Son números amigos' : 'No son números amigos'),
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
