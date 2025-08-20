import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class AccountSecurityScreen extends StatelessWidget {
  const AccountSecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text(
          'Account & Security',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.accountPrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  _buildSwitchTile(
                    isChecked: true,
                    text: 'Biometric ID',
                    onChanged: null,
                  ),
                  _buildSwitchTile(
                    isChecked: true,
                    text: 'Face ID',
                    onChanged: null,
                  ),
                  _buildSwitchTile(
                    isChecked: true,
                    text: 'SMS Authenticator',
                    onChanged: null,
                  ),
                  _buildSwitchTile(
                    isChecked: true,
                    text: 'Google Authenticator',
                    onChanged: null,
                  ),

                  _buildTile(text: 'Change Password', onTap: () {}),
                  _buildTileWithSubTitle(
                    text: 'Device Management',
                    onTap: null,
                    subTitle:
                        'Manage your account on the various devices you own.',
                  ),
                  _buildTileWithSubTitle(
                    text: 'Deactivate Account',
                    onTap: null,
                    subTitle:
                        "Temporarily deactivate your account. Easily reactivate when you're ready.",
                  ),
                  _buildTileWithSubTitle(
                    color: Color(0xffFF0000),
                    text: 'Delete Account',
                    onTap: null,
                    subTitle:
                        'Permanently remove your account and data. Proceed with caution.',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildSwitchTile({
  required bool isChecked,
  required String text,
  required final onChanged,
}) {
  // bool? isChecked = true;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    width: double.infinity,
    height: 56,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
        Switch(
          activeColor: AppColors.paymentSuccessBgColor,
          value: isChecked,
          onChanged: onChanged,
        ),
      ],
    ),
  );
}

Widget _buildTile({required String text, required final onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.fromLTRB(15, 15, 25, 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildTileWithSubTitle({
  required String text,
  required final onTap,
  required String subTitle,
  Color? color,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.fromLTRB(15, 15, 25, 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: color ?? null,
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: Text(subTitle, style: TextStyle(fontSize: 13)),
          ),
        ],
      ),
    ),
  );
}
