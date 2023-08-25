import 'package:cookieapp/Components/offersbar.dart';
import 'package:cookieapp/utiles/colors.dart';
import 'package:cookieapp/widgets/HeaderWidget.dart';
import 'package:cookieapp/widgets/bottomNavBar.dart';
import 'package:cookieapp/widgets/cookieCard.dart';
import 'package:cookieapp/widgets/cookiebar.dart';
import 'package:cookieapp/widgets/cookiepremiumList.dart';
import 'package:cookieapp/widgets/horizontalCookieCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/cookies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Cookie> cookies = [
    Cookie("Chocolete Chip Cookie", "assets/images/1.png", "20 USD"),
    Cookie("Oatmeal with Raisens", "assets/images/2.png", "50 USD"),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Body(size: size, cookies: cookies),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.size,
    required this.cookies,
  });

  final Size size;
  final List<Cookie> cookies;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeaderWidget(),
            const CookieBar(),
            SizedBox(
              height: size.height * 0.12,
            ),
            CookiePremiumList(cookies: cookies),
            const SizedBox(
              height: 20,
            ),
            const OffersBar(),
            const HorizontalCookieCard(),
             const SizedBox(
              height: 10,
            ),
            const HorizontalCookieCard(),
             const SizedBox(
              height: 10,
            ),
            const HorizontalCookieCard(),
          ],
        ),
      ),
    ));
  }
}
