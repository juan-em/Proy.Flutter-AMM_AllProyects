import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/home.dart';
import 'package:laboratorio02/app/view/splash.dart';
import 'package:laboratorio02/app/view/bienvenida.dart';
import 'package:laboratorio02/app/view/welcome.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primary = Color.fromARGB(255, 11, 8, 95);
    const textColor = Colors.white;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Pacifico',
          bodyColor: textColor,
          displayColor: textColor
        ),
        useMaterial3: true,
      ),
      home: WelcomePage(),
    );
  }
}