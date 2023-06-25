import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/home/home_page.dart';
import 'package:laboratorio02/app/view/splash/splash_page.dart';
import 'package:laboratorio02/app/view/bienvenida_page.dart';
import 'package:laboratorio02/app/view/start_page.dart';
import 'package:laboratorio02/app/view/welcome.dart';
import 'package:laboratorio02/app/view/task_list/task_list_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // const primary = Color(0xFF40B7AD);
    // const textColor = Color(0xFF4A4A4A);
    // const backgroundColor = Color(0xFFF5F5F5);

    const primary = Color.fromARGB(255, 11, 8, 95);
    const textColor = Color.fromARGB(255, 250, 245, 245);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),

        // scaffoldBackgroundColor: backgroundColor,

        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Poppins',
          bodyColor: textColor,
          displayColor: textColor
        ),
        useMaterial3: true,
      ),
      home: WelcomePage(),
    );
  }
}