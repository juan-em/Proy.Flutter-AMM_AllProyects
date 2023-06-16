import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task list'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Center(child: Text('Atras')),
        ),
      ),
      body: Center(child: Text('Hola, el contador es: $count')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count ++;
          });
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}
