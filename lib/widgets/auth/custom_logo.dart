import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_logo extends StatelessWidget {
  const Custom_logo({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff91DDFF), Color(0xff6A9EAE)])
          .createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: const Text(
        "LOGO",
        style:
            TextStyle(fontFamily: 'Prime', color: Colors.white, fontSize: 80),
      ),
    );
  }
}
