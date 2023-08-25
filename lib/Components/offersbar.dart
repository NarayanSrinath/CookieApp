import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersBar extends StatelessWidget {
  const OffersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Cookies Offers",
          style: GoogleFonts.titilliumWeb(
              fontSize: 40, color: Colors.amber.shade100),
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
