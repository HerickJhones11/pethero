import 'package:flutter/material.dart';

import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height*0.005),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
              IconButton(
                icon: Icon(Icons.list),
                onPressed: () =>
                    Navigator.pushNamed(context, 'menu'),
              ),
            ],
          )),
    );
  }
}