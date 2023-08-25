import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CookieBar extends StatelessWidget {
  const CookieBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              "Cookies",
              style: GoogleFonts.titilliumWeb(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Colors.amber.shade100),
            ),
            Text(
              "Premium",
              style: GoogleFonts.titilliumWeb(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.amber.shade100),
            ),
          ],
        ),
        Text(
          "See more",
          style: GoogleFonts.titilliumWeb(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.amber.shade100),
        ),
      ],
    );
  }
}
