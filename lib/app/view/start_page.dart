import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/widgets/parent.dart';

class StartComponent extends StatefulWidget {
  const StartComponent({Key? key}) : super(key: key);

  @override
  _StartComponentState createState() => _StartComponentState();
}

class _StartComponentState extends State<StartComponent> {
  String name = '';
  List<String> array = ["user1", "user2", "user3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Comenzando...',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(244, 252, 252, 252),
          ),
           // Tamaño de fuente personalizado
        ),
        backgroundColor: Color.fromARGB(131, 64, 86, 212), // Fondo transparente
        elevation: 3, // Sin sombra
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Nombre:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 200,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 243, 237, 237),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Iniciando sesión para: $name',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              ParentWidget(array: array),
            ],
          ),
        ),
      ),
    );
  }
}
