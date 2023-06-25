import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/widgets/tap.dart';

class ParentWidget extends StatefulWidget {
  final List<String> array;

  const ParentWidget({Key? key, required this.array}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}


