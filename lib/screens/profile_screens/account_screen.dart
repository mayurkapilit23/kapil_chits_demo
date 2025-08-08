import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/screens/help_&_support_screens/help_support_screen.dart';
import 'package:kapil_chits_demo/screens/profile_screens/app_appearance_screen.dart';
import 'package:kapil_chits_demo/screens/profile_screens/notification_screen.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_account_info_tile.dart';
import '../../widgets/custom_list_tile_with_icon.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const String profileImage =
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  static const String walletImage =
      'https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text('Account', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAccountInfoTile(
                  text: 'Priyal Sharma',
                  subText: '83873738738',
                  imageUrl: profileImage,
                  onTap: () {},
                ),
                SizedBox(height: 20),
                CustomAccountInfoTile(
                  text: '₹20,000',
                  subText: 'Your earnings',
                  imageUrl: walletImage,
                  onTap: () {},
                ),
                SizedBox(height: 20),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    // shrinkWrap: true,
                    children: [
                      CustomListTileWithIcon(
                        text: 'Chitfund History',
                        onTap: () {},
                        iconData: Icons.document_scanner,
                      ),
                      CustomListTileWithIcon(
                        text: 'Bank Account',
                        onTap: () {},
                        iconData: Icons.food_bank,
                      ),
                      CustomListTileWithIcon(
                        text: 'Payment Methods',
                        onTap: () {},
                        iconData: Icons.payment,
                      ),
                      CustomListTileWithIcon(
                        text: 'Notification',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationScreen(),
                            ),
                          );
                        },
                        iconData: Icons.notifications,
                      ),
                      CustomListTileWithIcon(
                        text: 'Account & Security',
                        onTap: () {},
                        iconData: Icons.security,
                      ),
                      CustomListTileWithIcon(
                        text: 'App Appearance',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppAppearanceScreen(),
                            ),
                          );
                        },
                        iconData: Icons.panorama_fish_eye,
                      ),
                      CustomListTileWithIcon(
                        text: 'Help & Support',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HelpSupportScreen(),
                            ),
                          );
                        },
                        iconData: Icons.help,
                      ),
                      CustomListTileWithIcon(
                        text: 'Rate us',
                        onTap: () {},
                        iconData: Icons.rate_review,
                      ),
                      CustomListTileWithIcon(
                        text: 'Logout',
                        onTap: () {
                          _showLogoutBottomSheet(context);
                        },
                        iconData: Icons.logout,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLogoutBottomSheet(context) {
    String? _selectedTheme;
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),

            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: AppColors.dottedLineColor),
                  SizedBox(height: 10),
                  Text(
                    'Sure you want to log out?',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),

                  Divider(color: AppColors.dottedLineColor),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonBgColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonBgColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text(
                            "Yes, Logout",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
