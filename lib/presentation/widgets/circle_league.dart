import 'package:flutter/material.dart';

class CircleLeague extends StatelessWidget {
  const CircleLeague({required this.league, super.key});

  final String league;

  @override
  Widget build(BuildContext context) {
    final topLine = league.split(' ')[0];
    final bottomLine = league.split(' ')[1];

    return CircleAvatar(
      radius: 27,
      backgroundColor: const Color(0xffe7f4f8), // should be in constant file or from theme
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topLine,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
          Text(bottomLine, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
