import 'package:flutter/material.dart';

class InformationComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Información',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(244, 252, 252, 252),
          ),
        ),
        backgroundColor: Color.fromARGB(131, 64, 86, 212),
        elevation: 3,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.5),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bienvenido a SilentHill',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 300,
                  child: Text(
                    'SilentHill es una aplicación de meditación que te ayuda a encontrar la paz interior y la armonía mental. Con nuestra amplia gama de ejercicios de meditación guiada y música relajante, podrás relajarte, reducir el estrés y mejorar tu bienestar emocional.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
