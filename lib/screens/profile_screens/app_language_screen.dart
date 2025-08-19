import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/widgets/custom_tile_language.dart';

import '../../core/app_colors.dart';

class AppLanguageScreen extends StatelessWidget {
  const AppLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.profilePrimaryColor,
        centerTitle: true,
        title: Text(
          'App Language',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.accountPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Material(
              color: Colors.transparent,
              child: ListView(
                shrinkWrap: true,
                children: [
                  CustomTileLanguage(onTap: () {}, text: 'English'),
                  Divider(
                    color: AppColors.dottedLineColor,
                    thickness: 1.0, // Controls the visual thickness of the line
                    indent: 16.0, // Space from the left edge
                    endIndent: 16.0, // Space from the right edge
                  ),
                  CustomTileLanguage(onTap: () {}, text: 'Hindi'),
                  Divider(
                    color: AppColors.dottedLineColor,
                    thickness: 1.0, // Controls the visual thickness of the line
                    indent: 16.0, // Space from the left edge
                    endIndent: 16.0, // Space from the right edge
                  ),
                  CustomTileLanguage(onTap: () {}, text: 'Japanese'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
