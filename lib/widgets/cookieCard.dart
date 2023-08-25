import 'package:cookieapp/Components/containerArrow.dart';
import 'package:cookieapp/Components/premiumCard.dart';
import 'package:cookieapp/model/cookies.dart';
import 'package:cookieapp/utiles/colors.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CookieCard extends StatelessWidget {
  const CookieCard({super.key, required this.cookie});
  final Cookie cookie;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cokkieSize = size.height * 0.16;
    var cardSize = size.height * 0.20;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(75),
                  topRight: Radius.circular(15))),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 32, right: 32, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.amber.shade100),
                ),
                PreimumCard(),
                Text(
                  cookie.price,
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.amber.shade100),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cokkieSize - 32),
          left: (cardSize-cokkieSize)/2  ,
          child: SizedBox(
            height: cokkieSize,
            width: cokkieSize,
            child: Image.asset(cookie.imagePath),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ContinerArrow())
      ],
    );
  }
}
