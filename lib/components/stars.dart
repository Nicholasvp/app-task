import 'package:flutter/material.dart';

class Stars extends StatefulWidget {
  const Stars({super.key, required this.difficult});
  final int difficult;

  @override
  State<Stars> createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  get difficult => widget.difficult;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: (difficult >= 1) ? Colors.blue : Colors.blue.shade100,
        ),
        Icon(
          Icons.star,
          color: (difficult >= 2) ? Colors.blue : Colors.blue.shade100,
        ),
        Icon(
          Icons.star,
          color: (difficult >= 3) ? Colors.blue : Colors.blue.shade100,
        ),
        Icon(
          Icons.star,
          color: (difficult >= 4) ? Colors.blue : Colors.blue.shade100,
        ),
        Icon(
          Icons.star,
          color: (difficult >= 5) ? Colors.blue : Colors.blue.shade100,
        ),
      ],
    );
  }
}
