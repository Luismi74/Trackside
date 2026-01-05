import 'package:flutter/material.dart';

class DisclaimerWidget extends StatelessWidget {
  const DisclaimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.black87,
      child: const Text(
        'Trackside is an unofficial project and is not associated in any way with the Formula 1 companies. F1, FORMULA ONE, FORMULA 1, FIA FORMULA ONE WORLD CHAMPIONSHIP, GRAND PRIX and related marks are trade marks of Formula One Licensing B.V.',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 12,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
