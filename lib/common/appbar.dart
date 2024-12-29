import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class CAppbar extends StatelessWidget {
  const CAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GradientText(
        'ARtistry',
        style: GoogleFonts.hubballi(fontSize: 32),
        gradientType: GradientType.radial,
        radius: 2.5,
        colors: const[
          Color.fromRGBO(113, 90, 242, 1),
          Color.fromRGBO(255, 0, 0, 1),
          
        ],
      ),
      actions: [const Icon(Icons.account_circle_outlined,size: 32,)],
    );
  }
}
 