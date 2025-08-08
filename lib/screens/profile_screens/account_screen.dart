import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/screens/help_&_support_screens/help_support_screen.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_account_info_tile.dart';
import '../../widgets/custom_list_tile_with_icon.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
                  imageUrl:
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                CustomAccountInfoTile(
                  text: '₹20,000',
                  subText: 'Your earnings',
                  imageUrl:
                      'https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                        onTap: () {},
                        iconData: Icons.notifications,
                      ),
                      CustomListTileWithIcon(
                        text: 'Account & Security',
                        onTap: () {},
                        iconData: Icons.security,
                      ),
                      CustomListTileWithIcon(
                        text: 'App Appearance',
                        onTap: () {},
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
                        onTap: () {},
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
}
