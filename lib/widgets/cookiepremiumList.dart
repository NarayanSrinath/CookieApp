import 'package:cookieapp/model/cookies.dart';
import 'package:cookieapp/widgets/cookieCard.dart';
import 'package:flutter/material.dart';

class CookiePremiumList extends StatelessWidget {
  const CookiePremiumList({
    super.key,
    required this.cookies,
  });

  final List<Cookie> cookies;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: cookies
          .map(
            (e) => CookieCard(cookie: e),
          )
          .toList(),
    );
  }
}
