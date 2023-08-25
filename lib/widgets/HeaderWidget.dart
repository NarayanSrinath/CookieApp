import 'package:cookieapp/Components/avatar.dart';
import 'package:cookieapp/Components/cart.dart';
import 'package:cookieapp/Components/userInfo.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Avatar(),
        SizedBox(
          width: 15,
        ),
        UserInfo(),
        Spacer(),
        Cart()
      ],
    );
  }
}
