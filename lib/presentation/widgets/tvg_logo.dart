import 'package:flutter/material.dart';

class TVGLogo extends StatelessWidget {
  const TVGLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        'assets/images/tvg_logo.png'); // In real world asset name should be in static file Images.tvg_logo
  }
}
