import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_list_tile_with_icon.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text(
          'Contact Support',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomListTileWithIcon(
                text: 'Customer Support',
                onTap: () {},
                iconData: Icons.support,
              ),
              SizedBox(height: 20),
              CustomListTileWithIcon(
                text: 'Website',
                onTap: () {},
                iconData: Icons.web,
              ),
              SizedBox(height: 20),
              CustomListTileWithIcon(
                text: 'WhatsApp',
                onTap: () {},
                iconData: Icons.whatshot,
              ),
              SizedBox(height: 20),
              CustomListTileWithIcon(
                text: 'Facebook',
                onTap: () {},
                iconData: Icons.facebook,
              ),
              SizedBox(height: 20),
              CustomListTileWithIcon(
                text: 'X (Formerly Twitter) ',
                onTap: () {},
                iconData: Icons.facebook,
              ),
              SizedBox(height: 20),
              CustomListTileWithIcon(
                text: 'Instagram',
                onTap: () {},
                iconData: Icons.facebook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
