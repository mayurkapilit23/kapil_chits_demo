import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text(
          'Privacy Policy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(child: Center(child: Text('Privacy Policy'))),
    );
  }
}
