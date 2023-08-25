import 'package:cookieapp/utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarIcon extends StatelessWidget {
     final String icon;
        final String iconName;
  const NavBarIcon({
    super.key, required this.icon, required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(12),
          decoration:const  BoxDecoration(
            shape: BoxShape.circle,color: buttonColor
          ),
          child: Image.asset(icon,color: Colors.amber.shade100,),
        ),
        Text(iconName,style: GoogleFonts.titilliumWeb(
              fontSize: 18, color: Colors.amber.shade100),
        )
      ],
    );
  }
}
