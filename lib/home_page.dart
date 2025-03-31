import 'package:flutter/material.dart';

// Tela principal (HomePage)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha lista', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Digite um item',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // Menu lateral (Drawer)
      drawer: Drawer(
        child: Column(
          children: [
            // Cabeçalho da conta do usuário
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/004/607/791/small_2x/man-face-emotive-icon-smiling-male-character-in-blue-shirt-flat-illustration-isolated-on-white-happy-human-psychological-portrait-positive-emotions-user-avatar-for-app-web-design-vector.jpg',
              ),
              accountName: Text('Kaue'), // Nome do usuário
              accountEmail: Text('Kaue@ete.com'), // Email do usuário
            ),
            // Lista de opções no menu
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Menu 1'),
                    leading: Icon(Icons.add), // Ícone à esquerda
                    onTap: () {
                      Navigator.pop(context); // Fecha o Drawer
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Menu 1 selecionado'),
                        ), // Mensagem de feedback
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Menu 2'),
                    leading: Icon(Icons.add),
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Menu 2 selecionado')),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Menu 3'),
                    leading: Icon(Icons.add),
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Menu 3 selecionado')),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Menu 4'),
                    leading: Icon(Icons.add),
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Menu 4 selecionado')),
                      );
                    },
                  ),
                  // Novo item de menu que navega para a nova tela
                  ListTile(
                    title: Text('Nova Tela'),
                    leading: Icon(Icons.new_releases),
                    onTap: () {
                      Navigator.pop(context); // Fecha o Drawer
                      // Aqui estamos navegando para a Nova Tela
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Nova tela (NewScreen)
class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nova Tela'), backgroundColor: Colors.blue),
      body: Center(child: Text('Bem-vindo à Nova Tela!')),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomePage()));
}
