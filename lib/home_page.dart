import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  int contador = 0;

  void incrementar() {
    setState(() {
      if (contador < 10) {
        contador++;
        if (contador == 10) {
          _mostrarMensagem();
        }
      }
    });
  }

  void subtrair() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  void resetar() {
    setState(() {
      contador = 0;
    });
  }

  void _mostrarMensagem() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Limite Atingido"),
          content: Text("O contador chegou ao valor máximo de 10!"),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$contador', style: TextStyle(fontSize: 40))),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: subtrair,
            backgroundColor: Colors.blue,
            child: Icon(Icons.remove, color: Colors.white, size: 30),
          ),
          SizedBox(width: 10), // Espaçamento entre os botões
          FloatingActionButton(
            onPressed: incrementar,
            backgroundColor: Colors.blue,
            child: Icon(Icons.add, color: Colors.white, size: 30),
          ),
          SizedBox(width: 10), // Espaçamento entre os botões
          FloatingActionButton(
            onPressed: resetar,
            backgroundColor: Colors.red,
            child: Icon(Icons.refresh, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
