import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hola Mundo'),
            Text('Hola Mundo'),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ASSETS'),
                  Text('IMÁGENES'),
                ],
              ),
            ),
            Image(image: AssetImage('assets/img2.jpg'), width: 300, height: 300, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
