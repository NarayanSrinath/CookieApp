import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';

class PreimumCard extends StatelessWidget {
  const PreimumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.crown,
          size: 16,
          color: Colors.orange.shade300,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Premium",
          style: GoogleFonts.titilliumWeb(
              fontSize: 18, color: Colors.orange.shade300),
        )
      ],
    );
  }
}
