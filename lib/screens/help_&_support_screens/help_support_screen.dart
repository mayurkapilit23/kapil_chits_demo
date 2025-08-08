import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/core/app_colors.dart';
import 'package:kapil_chits_demo/screens/help_&_support_screens/privacy_policy_screen.dart';
import 'package:kapil_chits_demo/screens/help_&_support_screens/terms_of_service_screen.dart';

import '../../widgets/custom_list_tile.dart';
import 'contact_support_screen.dart';
import 'faq_screen.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          'Help & Support',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomListTile(
                  text: 'FAQ',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FaqScreen()),
                    );
                  },
                ),

                CustomListTile(
                  text: 'Contact Support',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactSupportScreen(),
                      ),
                    );
                  },
                ),

                CustomListTile(
                  text: 'Privacy Policy',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicyScreen(),
                      ),
                    );
                  },
                ),
                CustomListTile(
                  text: 'Terms of Service',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermsOfServiceScreen(),
                      ),
                    );
                  },
                ),
                CustomListTile(text: 'Feedback', onTap: () {}),
                CustomListTile(text: 'About us', onTap: () {}),
                CustomListTile(text: 'Rate us', onTap: () {}),
                CustomListTile(text: 'Visit Our Website', onTap: () {}),
                CustomListTile(text: 'Follow us on Social Media', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
