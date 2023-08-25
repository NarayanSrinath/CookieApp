import 'package:flutter/material.dart';

class ContinerArrow extends StatefulWidget {
  const ContinerArrow({super.key});

  @override
  State<ContinerArrow> createState() => _ContinerArrowState();
}

class _ContinerArrowState extends State<ContinerArrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.amber.shade100, shape: BoxShape.circle),
      padding: EdgeInsets.all(8),
      child: const Icon(
        Icons.arrow_forward,
        size: 20,
        color: Colors.black,
      ),
    );
  }
}
