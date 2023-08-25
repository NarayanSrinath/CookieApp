import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "james",
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color: Colors.amber.shade100
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          "Andrew",
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color: Colors.amber.shade100
          ),
        )
      ],
    );
  }
}
