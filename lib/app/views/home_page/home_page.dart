import 'package:flutter/material.dart';
import 'package:pethero/app/components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';


class HomePage extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff434343),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}