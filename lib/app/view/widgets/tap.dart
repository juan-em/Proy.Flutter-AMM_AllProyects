import 'package:flutter/material.dart';

class TapboxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  const TapboxB({
    Key? key,
    required this.active,
    required this.onChanged,
  }) : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        decoration: BoxDecoration(
          border: active
              ? Border.all(
                  color: Colors.white,
                  width: 2,
                )
              : null,
        ),
        child: Stack(
          children: [
            if (!active)
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            Center(
              child: Text(
                active ? 'Disponible' : 'No disponible',
                style: TextStyle(
                  fontSize: 24,
                  color: active ? Colors.lightGreen[700] : Colors.grey[600],
                  decoration: active ? TextDecoration.none : TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
