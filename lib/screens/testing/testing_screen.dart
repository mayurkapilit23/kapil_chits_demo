import 'package:flutter/material.dart';
import 'package:kapil_chits_demo/screens/help_&_support_screens/help_support_screen.dart';

import '../../core/app_colors.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profilePrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HelpSupportScreen(),
                      ),
                    );
                  },
                  title: Text('List tile'),
                  subtitle: Text(
                    ''
                    'without splash color transparent',
                  ),
                  trailing: Icon(Icons.arrow_forward),
                  tileColor: AppColors.accountPrimaryColor,
                ),
                SizedBox(height: 20),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HelpSupportScreen(),
                      ),
                    );
                  },
                  title: Text('List Tile'),
                  subtitle: Text('with splash color default'),
                  trailing: Icon(Icons.arrow_forward),
                  tileColor: AppColors.accountPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
