import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/task_list/task_list_page.dart';
import 'package:laboratorio02/app/view/components/shape.dart';
import 'package:laboratorio02/app/view/components/h1.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            const Row(
              children: [
                Shape()
              ],
            )
          ],
        ),
        const SizedBox(height: 79),
        Image.asset(
          'assets/images/onboarding-image.png',
          width: 180,
          height: 168,
        ),
        const SizedBox(
          height: 99,
        ),
        const H1('Lista de tareas'),
        const SizedBox(
          height: 21,
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 32)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const TaskListPage();
            }));
          },
          child: const Text(
            'La mejor forma para que no se te olvide nada es anaotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }
}
