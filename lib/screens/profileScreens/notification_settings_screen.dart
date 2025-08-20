import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text(
          'Notification Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.accountPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'General Notifications',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'Security Alerts',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'Chitfund Auction Alerts',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'Payment Confirmation',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: false,
                  text: 'Upcoming Auction Reminders',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'Reward & Gamification',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: false,
                  text: 'Redeemable Coupons',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: false,
                  text: 'Referral & Bonus',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'Special Offers',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: false,
                  text: 'Survey and Feedback Requests',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: true,
                  text: 'Important Announcements',
                ),
                _buildNotificationSettingSwitchTile(
                  isChecked: false,
                  text: 'App Tips and Tutorials',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildNotificationSettingSwitchTile({
  required bool isChecked,
  required String text,
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
          onChanged: (newValue) {
            isChecked = newValue;
          },
        ),
      ],
    ),
  );
}
