import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/information_page.dart';
import 'package:laboratorio02/app/view/start_page.dart';
import 'package:laboratorio02/app/view/favorities_page.dart';
import 'package:laboratorio02/app/view/widgets/parent.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 16),
                const Text(
                  'SilenceHill',
                  style: TextStyle(
                    fontSize: 45,
                    fontFamily: 'RougeScript',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Pon tu mente en la armonía más sana posible',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const StartComponent();
                    }));
                  },
                  child: const Text(
                    'Comenzar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),

                //Text: más informacion
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return InformationComponent();
                    }));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Más información',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 0, 0, 0),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: TextButton(
              onPressed: () { 
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return FavoritePage();
                    }));
              },
              child: const Text(
                'Favoritos',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
