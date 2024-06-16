// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/src/widget/patient_drawer_header.dart';

class PatientDrawer extends StatefulWidget {
  const PatientDrawer({super.key});

  @override
  State<PatientDrawer> createState() => _PatientDrawerState();
}

class _PatientDrawerState extends State<PatientDrawer> {
  void _onItemTap(String route) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: TColors.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            PatientDrawerHeader(
              name: 'Jesse Yeboah',
              onTapProfile: () => _onItemTap('/patient_profile_screen'),
            ),
            _buildItem(
              icon: FontAwesomeIcons.house,
              title: 'Home',
              onTap: () => _onItemTap('/home'),
            ),
            _buildItem(
              icon: FontAwesomeIcons.user,
              title: 'Profile',
              onTap: () => _onItemTap('/profile'),
            ),
            _buildItem(
              icon: FontAwesomeIcons.cog,
              title: 'Settings',
              onTap: () => _onItemTap('/settings'),
            ),
            _buildItem(
              icon: FontAwesomeIcons.signOutAlt,
              title: 'Logout',
              onTap: () => _onLogoutTap(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: TColors.primaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white, size: 24),
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
      ),
    );
  }

  void _onLogoutTap() {
    Get.back();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed('/login_screen');
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}
