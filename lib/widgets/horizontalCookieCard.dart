import 'package:cookieapp/Components/containerArrow.dart';
import 'package:cookieapp/Components/premiumCard.dart';
import 'package:cookieapp/utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalCookieCard extends StatefulWidget {
  const HorizontalCookieCard({super.key});

  @override
  State<HorizontalCookieCard> createState() => _HorizontalCookieCardState();
}

class _HorizontalCookieCardState extends State<HorizontalCookieCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: size.height * 0.14,
          decoration: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(75),
              )),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Image.asset("assets/images/3.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    ProductInfo(),
                    SizedBox(
                      width: 25,
                    ),
                    Pricetag(),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: ContinerArrow())
      ],
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Double\nChocolate",
          style: GoogleFonts.titilliumWeb(
              fontSize: 18, color: Colors.amber.shade100),
        ),
        PreimumCard()
      ],
    );
  }
}

class Pricetag extends StatelessWidget {
  const Pricetag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "20 USD",
          style: GoogleFonts.titilliumWeb(
              decoration: TextDecoration.lineThrough,
              fontSize: 18,
              color: Colors.amber.shade100),
        ),
        Text(
          "10 USD",
          style: GoogleFonts.titilliumWeb(
              fontSize: 18, color: Colors.amber.shade100),
        ),
      ],
    );
  }
}
