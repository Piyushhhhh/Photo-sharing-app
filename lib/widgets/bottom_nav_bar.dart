import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piyushPhotoSharing/constant/color.dart';
import 'package:piyushPhotoSharing/screens/profile/profile_page.dart';

import '../screens/home/home_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) {
        if (index == 0) {
          Get.toNamed(HomePage.id);
        } else {
          Get.toNamed(ProfilePage.id);
        }
      },
      backgroundColor: bottomNavBarColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity_outlined),
          label: 'profile',
        ),
      ],
    );
  }
}
